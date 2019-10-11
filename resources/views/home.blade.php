@extends('layouts.app')
@section('title', 'App Shop | Dashboard')
@section('body-class', 'profile-page')
@section('content')
<div class="page-header header-filter" data-parallax="true" style="background-image: url('{{ asset('img/botw4.jpg') }}')">

  </div>
<div class="container">
    <div class="row justify-content-center main main-raised">
        <div class="col-md-10">
            <a class="btn btn-primary btn-round pull-right" href="{{ route('cuenta.create') }}">Registrar Cuenta Nintendo</a>
            <a class="btn btn-outline-primary btn-round pull-right" href="{{ route('beneficiado.create') }}">Registrar Beneficiado</a>
            @if (session('notification'))
            <div class="alert alert-success" role="alert">
                {{ session('notification') }}
            </div>
            @endif
            <h3>Hola {{ Auth::user()->name }}</h3>
            <div class="card">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <table class="table">
                         <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>Cuenta</th>
                                <th>Correo</th>
                                <th>Password</th>
                                <th class="text-right">Status</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        @foreach($cuenta as $c)
                        <tbody>
                            <tr>
                                <td>{{ $c->id }}</td>
                                <td>{{ $c->cuentas }}</td>
                                <td>{{ $c->correo }}</td>
                                <td>{{ $c->password }}</td>
                                <td>{{ $c->status }}</td>
                                <td>
                                    <form method="POST" action="{{ route('cuenta.destroy', $c->id)}}">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <a href="{{ route('cuenta.show', $c->id) }}" rel="tooltip" title="Ver" class="btn btn-info btn-round btn-sm">
                                        <i class="material-icons">account_circle</i>
                                        </a>
                                        <a href="{{ route('cuenta.edit', $c->id) }}" rel="tooltip" title="Editar" class="btn btn-success btn-round btn-sm">
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
                    {{ $cuenta->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
