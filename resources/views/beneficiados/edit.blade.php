@extends('layouts.app')
@section('title', 'Editar')
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
       <form method="POST" action="{{ route('beneficiado.update', $cuentas->id) }}">
                 {!! method_field('PUT') !!}
                  @csrf
                 <div class="form-group label-floating">
                     <label class="control-label">Correo</label>
                     <input type="text" value="{{ $cuentas->correo }}" name="correo" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">ID Nintendo</label>
                     <input type="text" value="{{ $cuentas->id_nintendo }}" name="id_nintendo" class="form-control" />
                 </div>
                 <div class="form-group label-floating">
                     <label class="control-label">Pagado</label>
                     <input type="text" value="{{ $cuentas->pagado }}" name="pagado" class="form-control" />
                 </div> <div class="form-group label-floating">
                     <label class="control-label">ID Cuenta a la que se asocia</label>
                     <input type="text" value="{{ $cuentas->id_cuenta }}" name="id_cuenta" class="form-control" />
                 </div>
          </div>
                 <button type="submit" class="btn btn-primary">Registrar</button>
              </form>
      </div>

    </div>
  </div>
@include('includes.footer')
@endsection