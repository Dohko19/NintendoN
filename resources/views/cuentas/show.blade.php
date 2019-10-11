@extends('layouts.app')
@section('title', 'Ver cuenta Padre')
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
        <h2 class="title text-center">Cuentas vinculadas en plan familiar</h2>
        <a class="btn btn-outline-primary btn-round pull-right" href="{{ route('beneficiado.create') }}">Registrar Correo</a>
                            <table class="table">
                         <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>Correo</th>
                                <th>ID Nintendo</th>
                                <th>Pagado</th>
                                <th>Cuenta Padre/Admin</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        @foreach($beneficiado as $ben)
                        <tbody>
                            <tr>
                                <td>{{ $ben->id }}</td>
                                <td>{{ $ben->correo }}</td>
                                <td>{{ $ben->id_nintendo }}</td>
                                <td>{{ $ben->pagado }}</td>
                                <td>{{ $cuenta->correo }}</td>
                                <td>
                                    <form method="POST" action="{{ route('beneficiado.destroy', $ben->id)}}">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <a href="{{ route('beneficiado.edit', $ben->id) }}" rel="tooltip" title="Editar" class="btn btn-success btn-round btn-sm">
                                            <i class="material-icons">edit</i>
                                        </a>
                                        <button type="submit"
                                        rel="tooltip"
                                        title="Eliminar"
                                        class="btn btn-danger btn-round btn-sm">
                                            <i class="material-icons">close</i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                        @endforeach
                    </table>
      </div>

    </div>
  </div>
@include('includes.footer')
@endsection