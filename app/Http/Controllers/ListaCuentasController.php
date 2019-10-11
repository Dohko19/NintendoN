<?php

namespace App\Http\Controllers;

use App\ListaBeneficiados;
use App\ListaCuentas;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;

class ListaCuentasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('cuentas.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('cuentas.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      ListaCuentas::create($request->all());
      return redirect('home');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $cuenta = ListaCuentas::findOrFail($id);
        $beneficiado = ListaBeneficiados::where('id_cuenta', '=', $id)->get();
        //$listaben = ListaBeneficiados::findOrFail($id);
        return view('cuentas.show', compact('cuenta','beneficiado'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cuentas = ListaCuentas::find($id);
        return view('cuentas.edit', compact('cuentas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $cuentas = ListaCuentas::find($id);
        $cuentas->update($request->all());
        return redirect('home')->with('notification', 'Actualizado Correctamente');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ListaCuentas::findOrFail($id)->delete();
        return back();
    }
}
