<?php

namespace App\Http\Controllers\Api;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    // Display a listing of the products
    public function index()
    {
        $products = Product::get();  // Fetch all products
        if ($products->count() > 0) {
            return ProductResource::collection($products);  // Return products as a collection using ProductResource
        } else {
            return response()->json(['message' => 'No products available'], 200); 
        }
    }

    // Store a newly created product with an image
    public function store(Request $request)
    {
        // Validate input
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'category' => 'required|string|max:255',
            'price' => 'required|numeric|min:0',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048', // Optional image field
        ]);
    
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }
    
        // Store the image and get the path if it's present
        $imagePath = $request->hasFile('image') ? $request->file('image')->store('product_images', 'public') : null;
    
        // Create Product if validation passes
        $product = Product::create([
            'name' => $request->name,
            'category' => $request->category,
            'price' => $request->price,
            'description' => $request->description,
            'image' => $imagePath,
        ]);
    
        return response()->json([
            'message' => 'Product Created Successfully',
            'data' => new ProductResource($product),  // Return the created product using ProductResource
        ], 201);
    }

    // Display a specific product by ID
    public function show($id)
    {
        $product = Product::find($id);
        if ($product) {
            return new ProductResource($product);  // Return product details using ProductResource
        }
        return response()->json(['message' => 'Product not found'], 404);
    }

    // Update an existing product with an image
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        // Validate update fields
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'category' => 'required|string|max:255',
            'price' => 'required|numeric|min:0',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048', // Optional image field
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        // If a new image is uploaded, delete the old image and store the new one
        if ($request->hasFile('image')) {
            // Delete the old image
            Storage::disk('public')->delete($product->image);
            // Store the new image
            $imagePath = $request->file('image')->store('product_images', 'public');
            $product->image = $imagePath;  // Update the image path
        }

        // Update the product
        $product->update([
            'name' => $request->name,
            'category' => $request->category,
            'price' => $request->price,
            'description' => $request->description,
        ]);

        return response()->json([
            'message' => 'Product updated successfully',
            'data' => new ProductResource($product),  // Return the updated product
        ], 200);
    }

    // Delete a product by ID and its associated image
    public function destroy($id)
    {
        $product = Product::find($id);
        if ($product) {
            // Check if there is an image to delete
            if ($product->image && Storage::disk('public')->exists($product->image)) {
                // Delete the image from storage
                Storage::disk('public')->delete($product->image);
            }

            // Delete the product from the database
            $product->delete();

            // Reset auto-increment for the products table
            $lastId = Product::max('id');
            if ($lastId) {
                \DB::statement("ALTER TABLE products AUTO_INCREMENT = " . ($lastId + 1));
            } else {
                // If the table is empty, reset auto-increment to 1
                \DB::statement("ALTER TABLE products AUTO_INCREMENT = 1");
            }

            return response()->json(['message' => 'Product deleted successfully'], 200);
        }
        return response()->json(['message' => 'Product not found'], 404);
    }
}
