@extends('layouts.app')
@section('title', 'App Shop | Cuentas')
@section('body-class', 'profile-page')
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
      <div class="section text-center">
        <h2 class="title">Crear Cuenta</h2>
        <div class="team">
              <form method="POST" action="{{ route('cuenta.store') }}">
              	 @csrf
                 <div class="form-group label-floating">
                     <label class="control-label">Cuenta ID</label>
                     <input type="text" value="{{ old('cuentas') }}" name="cuentas" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">Correo de Cuenta</label>
                     <input type="text" value="{{ old('correo') }}" name="correo" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">Password</label>
                     <input type="text" value="{{ old('password') }}" name="password" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                      <div class="form-check">
					      <label class="form-check-label">
					          <input class="form-check-input" type="checkbox" name="status" value="on">
					          Status Completado
					          <span class="form-check-sign">
					              <span class="check"></span>
					          </span>
					      </label>
					  </div>
                 </div>
                 <button type="submit" class="btn btn-primary">Registrar</button>
              </form>
          </div>
        </div>
      </div>


    </div>
  </div>
@include('includes.footer')
@endsection