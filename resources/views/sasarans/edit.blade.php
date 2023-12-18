<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
 @include('Partials.head')
</head>

<body class="hold-transition sidebar-mini">
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
            {{-- <h1 class="m-0">Starter Page</h1> --}}
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ route('sasarans.index') }}">Home</a></li>
              <li class="breadcrumb-item active">Edit Data Sasaran</li>
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

                <h3>Edit Data Sasaran</h3>

            </div>
          <div class="card-body">
            <form action="{{ route('sasarans.update', $sasaran->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <input type="text" name="sasaran" class="form-control mb-3" value="{{ $sasaran->sasaran }}" placeholder="Sasaran" required>
                    
                </div>
                <div class="form-group">
                   <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
          </div>
        </div>
       
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
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
  @section('title', 'Edit')
  @section('content')
  <form action="{{ route('sasarans.update', $sasaran->id) }}" method="post">
      @csrf
      @method('PUT')
      <div class="form-group">
          <label for="sasaran">Sasaran</label>
          <input type="text" name="sasaran" class="form-control mb-3" value="{{ $sasaran->sasaran }}" required>
      </div>
      <button type="submit" class="btn btn-primary">Simpan</button>
  </form>
  @endsection

  @section('inline_script')
  @endsection
      --}}
