@extends('layouts.app')
@section('title', 'Editar un Producto')
@section('body-class', 'profile-page sidebar-collapse')
@section('content')

<div class="page-header header-filter" data-parallax="true" style="background-image: url('{{ asset('img/botw.jpg') }}')">

  </div>
  <div class="main main-raised">
    <div class="container">
            @if( $errors->any())
              <div class="alert alert-danger">
                  <ul>
                      @foreach($errors->all() as $error)
                      <li>{{ $error }}</li>
                      @endforeach
                  </ul>
              </div>
            @endif
      <div class="section ">
        <h2 class="title text-center">Editar</h2>
       <form method="POST" action="{{ route('cuenta.update', $cuentas->id) }}">
                 @csrf
                 {!! method_field('PUT') !!}
                 <div class="form-group label-floating">
                     <label class="control-label">Cuenta ID</label>
                     <input type="text" value="{{ $cuentas->cuentas }}" name="cuentas" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">Correo de Cuenta</label>
                     <input type="text" value="{{ $cuentas->correo }}" name="correo" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">Password</label>
                     <input type="text" value="{{ $cuentas->password }}" name="password" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                      <div class="form-check">
                <label class="form-group">Status</label>
                    <input class="form-control" type="text" name="status"
                    value="{{ $cuentas->status}} ">
            </div>
                 </div>
                 <button type="submit" class="btn btn-primary">Registrar</button>
              </form>
      </div>

    </div>
  </div>
@include('includes.footer')
@endsection