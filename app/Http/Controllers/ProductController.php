<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view ('products.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    public function edit(Product $product){

        return view('products.edit',compact('product'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return view('products.show',compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function save(Request $request)
    {

        $data = [];

        $path = $request->file->store('images/products', "public");
         $data["nombre"] = $request->nombre;
         $data["descripcion"] = $request->descripcion;
         $data["precio"] = $request->precio;
         $data["fecha_expiracion"] = $request->fecha_expiracion;
         $data["imagen"] = $path;
        $producto = Product::create($data);

        return redirect()->route('productos.index')->withFlash('El Producto ha sido creado exitosamente!');
    }
    public function save_edit (Product $product,Request $request)
    {
        if ($request->file('file')) {
            $path = $request->file->store('images/products', "public");
            $product->imagen = $path;
        }
         $product->nombre = $request->nombre;
         $product->descripcion = $request->descripcion;
         $product->precio = $request->precio;
         $product->fecha_expiracion = $request->fecha_expiracion;

        $product->save();

        return redirect()->route('productos.index')->withFlash('El Producto ha sido Editado exitosamente!');
    }
    public function delete(Product $product){
        $product -> estado=0;
        $product ->save();
        return response('success');

    }
    public function getJson(Request $params)
    {

        $query = 'SELECT P.id as id, P.nombre as nombre
        FROM products P
        where P.estado = 1';

        $result = DB::select($query);
        $api_Result['data'] = $result;

        return Response::json( $api_Result );
    }
}
