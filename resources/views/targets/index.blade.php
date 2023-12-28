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
            <h1 class="m-0">Target</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Target</li>
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
            <a href="{{ route('targetexport') }}" class="btn btn-success">Export</a>
            <div class="card-tools">
              <a href="{{ route('targets.create') }}" class="btn btn-primary">Tambah Data    <i class="fas fa-plus-square"></i></a>
            </div>
          </div>

          <div class="card-body">
            <table class="table table-bordered">
              <tr>
                  <th>No</th>
                  <th>Sasaran</th>
                  <th>Indikator Kinerja</th>
                  <th>Tahunan</th>
                  <th colspan="4">Triwulan</th>
                  <th>Aksi</th>
              </tr>

                <?php $no = 1; ?>


              @foreach ($targets as $target)
              <tr>
                <td>{{ $no++ }}</td>
                <td class="col-4">{{ $target->sasaran ? $target->sasaran->sasaran : 'Tidak ada data sasaran' }}</td>
                <td class="col-4">{{ $target->kinerja ? $target->kinerja->kinerja : 'Tidak ada data kinerja' }}</td>
                <td class="">{{ $target->tahunan }}</td>
                <td class="">{{ $target->I }}</td>
                <td class="">{{ $target->II }}</td>
                <td class="">{{ $target->III }}</td>
                <td class="">{{ $target->IV }}</td>
                <td class="col-3">
                  <a href="{{ route('targets.edit', $target->id) }}" class="btn btn-warning m-1 "><i class="bi bi-pencil-square"></i></a>
                    <form action="{{ route('targets.destroy', $target->id) }}" method="post" style="display: inline">
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