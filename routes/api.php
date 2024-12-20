<?php
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CatalogController;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::apiResource('products', ProductController::class);

Route::apiResource('catalog', CatalogController::class);

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
