<!DOCTYPE html>
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
              <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Home</a></li>
              <li class="breadcrumb-item active">Edit Data User</li>
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
                <h3>Edit Data User</h3>
            </div>
          <div class="card-body">
            <form action="{{ route('users.update', $user->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="name">Nama :</label>
                    <input type="text" name="name" class="form-control mb-3" value="{{ $user->name }}" autocomplete="off" autofocus required>
                </div>
                <div class="form-group">
                    <label for="jabatan">Jabatan :</label>
                    <select class="form-control" name="jabatan" autofocus required>
                        <option value="">--Pilih Jabatan--</option>
                        <option value="dekan" {{ $user->jabatan === 'dekan' ? 'selected' : '' }}>Dekan</option>
                        <option value="wakildekan" {{ $user->jabatan === 'wakildekan' ? 'selected' : '' }}>Wakil Dekan</option>
                        <option value="operator" {{ $user->jabatan === 'operator' ? 'selected' : '' }}>Operator</option>
                        <option value="admin" {{ $user->jabatan === 'admin' ? 'selected' : '' }}>Admin</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="email">Email :</label>
                    <input type="email" name="email" class="form-control mb-3" value="{{ $user->email }}" autocomplete="off" autofocus required>
                </div>
                <div class="form-group">
                    <label for="password">Password :</label>
                    <input type="password" name="password" class="form-control mb-3" minlength="8" autofocus>
                    <small class="text-muted">Kosongkan jika tidak ingin mengubah password.</small>
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
