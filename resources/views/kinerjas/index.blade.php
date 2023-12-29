<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
 @include('Partials.head')
</head>
<div class="wrapper">

  <!-- Navbar -->
 @include('Partials.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  @include('Partials.sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Indikator Kinerja</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Data Kinerja</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="card card-info card-outline">
          <div class="card-header">
            <a href="{{ route('kinerjaexport') }}" class="btn btn-success">Export  <i class="bi bi-filetype-xlsx"></i></a>
            <div class="card-tools">
              <a href="{{ route('kinerjas.create') }}" class="btn btn-primary">Tambah Data   <i class="fas fa-plus-square"></i></a>
            </div>
          </div>

          <div class="card-body">
            <table class="table table-bordered">
              <tr>
                  <th>No</th>
                  <th>Sasaran</th>
                  <th>Indikator Kinerja</th>
                  <th>Aksi</th>
              </tr>

                <?php $no = 1; ?>

              @foreach ($kinerjas as $kinerja)
              <tr>
                <td>{{ $no++ }}</td>
                <td class="col-4">{{ $kinerja->sasaran }}</td>
                <td class="col-5">{{ $kinerja->kinerja }}</td>
                <td><a href="{{ route('kinerjas.edit', $kinerja->id) }}" class="btn btn-warning m-1 "><i class="bi bi-pencil-square"></i></a>
                    <form action="{{ route('kinerjas.destroy', $kinerja->id) }}" method="post" style="display: inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Yakin Hapus?')"><i class="bi bi-trash"></i></button>
                    </form>
                    </td>
              </tr>
              @endforeach
            </table>
          </div>
        </div>

    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
   @include('Partials.footer')
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
@include('Partials.script')

</body>
</html>













{{-- 
@extends('template.dashboard')
@section('title', 'kinerja')
@section('content')
    <div class="content">
        <h1>Indikator Kinerja<br></h1>
        <a href="{{ route('kinerjas.create') }}" class="btn btn-primary mb-3 mt-2">Tambah Data</a>
        <table class="table ">
            <thead class="table-primary">
            <tr>
                <th scope="row">No</th>
                <th scope="row">Sasaran</th>
                <th scope="row">Kinerja</th>
                <th scope="row">Aksi</th>
            </tr>
        </thead>
            <tbody class="table-group-divider">
                

                @foreach ($kinerjas as $kinerja)
                    <tr>
                        
                        <td>{{ $no++ }}</td>
                        <td>{{ $kinerja->sasaran }}</td>
                        <td>{{ $kinerja->kinerja }}</td>
                        <td><a href="{{ route('kinerjas.edit', $kinerja->id) }}" class="btn btn-warning m-1">Edit</a>
                        <form action="{{ route('kinerjas.destroy', $kinerja->id) }}" method="post" style="display: inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Yakin Hapus?')">Hapus</button>
                        </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    @endsection

    @section('inline_script')
@endsection --}}