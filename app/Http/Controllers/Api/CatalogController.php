<?php

namespace App\Http\Controllers\Api;

use App\Models\Catalog;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\CatalogResource;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

class CatalogController extends Controller
{
    // Display a listing of the catalog items
    public function index()
    {
        $catalogItems = Catalog::all();
        
        return $catalogItems->isNotEmpty()
            ? CatalogResource::collection($catalogItems)
            : response()->json(['message' => 'No Catalog items available'], 200);
    }

    // Store a new catalog item with an image or image URL
    public function store(Request $request)
    {
        // Validate input: allow either a file or URL for the imageCtg field
        $validator = Validator::make($request->all(), [
            'imageCtg' => 'nullable|mimes:jpg,jpeg,png,gif|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        // Handle image upload or URL
        $imagePath = $this->handleImageUpload($request);
        if (!$imagePath) {
            return response()->json(['message' => 'No imageCtg provided'], 400);
        }

        $catalogItem = Catalog::create(['imageCtg' => $imagePath]);

        return response()->json([
            'message' => 'Catalog Item Created Successfully',
            'data' => new CatalogResource($catalogItem),
        ], 201);
    }

    // Display a specific catalog item (image)
    public function show($id)
    {
        $catalogItem = Catalog::find($id);
        
        return $catalogItem
            ? new CatalogResource($catalogItem)
            : response()->json(['message' => 'Catalog item not found'], 404);
    }

    // Update an existing catalog item (image or image URL)
    public function update(Request $request, $id)
    {
        $catalogItem = Catalog::find($id);
        if (!$catalogItem) {
            return response()->json(['message' => 'Catalog item not found'], 404);
        }

        // Validate input for imageCtg
        $validator = Validator::make($request->all(), [
            'imageCtg' => 'nullable|mimes:jpg,jpeg,png,gif|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        // Handle image upload or URL
        $imagePath = $this->handleImageUpload($request);
        if ($imagePath) {
            // Delete old image if applicable
            if ($catalogItem->imageCtg && !filter_var($catalogItem->imageCtg, FILTER_VALIDATE_URL)) {
                Storage::disk('public')->delete($catalogItem->imageCtg);
            }
            $catalogItem->imageCtg = $imagePath;
        }

        $catalogItem->save();

        return response()->json([
            'message' => 'Catalog item updated successfully',
            'data' => new CatalogResource($catalogItem),
        ], 200);
    }

    // Delete a catalog item (image)
    public function destroy($id)
    {
        $catalogItem = Catalog::find($id);
        if ($catalogItem) {
            // Delete file if it's not a URL
            if ($catalogItem->imageCtg && !filter_var($catalogItem->imageCtg, FILTER_VALIDATE_URL)) {
                Storage::disk('public')->delete($catalogItem->imageCtg);
            }

            $catalogItem->delete();

            // Reset auto-increment if table is empty
            $lastId = Catalog::max('id');
            if ($lastId) {
                \DB::statement("ALTER TABLE catalogs AUTO_INCREMENT = " . ($lastId + 1));
            } else {
                // Jika tabel kosong, set auto-increment ke 1
                \DB::statement("ALTER TABLE catalogs AUTO_INCREMENT = 1");
            }

            return response()->json(['message' => 'Catalog item deleted successfully'], 200);
        }

        return response()->json(['message' => 'Catalog item not found'], 404);
    }

    // Handle image upload or URL validation
    private function handleImageUpload(Request $request)
    {
        if ($request->has('imageCtg') && filter_var($request->imageCtg, FILTER_VALIDATE_URL)) {
            // If it's a URL, return the URL
            return $request->imageCtg;
        } elseif ($request->hasFile('imageCtg')) {
            // If it's a file, store it
            return $request->file('imageCtg')->store('catalog_images', 'public');
        }

        return null;
    }
}
