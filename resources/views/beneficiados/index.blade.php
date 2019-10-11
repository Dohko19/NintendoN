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
              <form method="POST" action="{{ route('beneficiado.store') }}">
              	 @csrf
                 <div class="form-group label-floating">
                     <label class="control-label">Correo</label>
                     <input type="text" value="{{ old('correo') }}" name="correo" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">ID Nintendo</label>
                     <input type="text" value="{{ old('id_nintendo') }}" name="id_nintendo" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">Pagado</label>
                     <input type="text" value="{{ old('pagado') }}" name="pagado" class="form-control" />
                 </div> <div class="form-group label-floating">
                     <label class="control-label">ID Cuenta a la que se asocia</label>
                     <select class="form-control" name="id_cuenta">
                        <option value="0">----Seleccion de Opcion -----</option>
                        @foreach ($cuentas as $cuenta)
                            <option value="{{ $cuenta->id }}">{{ $cuenta->correo }}</option>
                        @endforeach
                    </select>
                     {{-- <input type="text" value="{{ old('id_cuenta') }}" name="id_cuenta" class="form-control" /> --}}
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