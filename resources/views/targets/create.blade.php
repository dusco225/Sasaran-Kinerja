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
              <li class="breadcrumb-item"><a href="{{ route('targets.index') }}">Home</a></li>
              <li class="breadcrumb-item active">Tambah Data Kinerja</li>
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
                <h4>Tambah Data kinerja</h4>
            </div>
          <div class="card-body">
            <div class="card-body">
              <form action="{{ route('targets.store') }}" method="POST">
                @csrf
  
                <div class="form-group">
                  <label for="sasaran_id">Sasaran :</label>
                  <select class="form-control" id="sasaran_id" name="sasaran_id" autofocus>
                    @foreach ($sasarans as $sasaran)
                      <option value="{{ $sasaran->id }}">{{ $sasaran->sasaran }}</option>
                    @endforeach
                  </select>
                </div>
  
                <div class="form-group">
                  <label for="kinerja_id">Indikator Kinerja :</label>
                  <select class="form-control" id="kinerja_id" name="kinerja_id" autofocus>
                    @foreach ($kinerjas as $kinerja)
                      <option value="{{ $kinerja->id }}">{{ $kinerja->kinerja }}</option>
                    @endforeach
                  </select>
                  </div>

                    <div class="form-group">
                      <label for="tahunan">Tahunan :</label>
                      <input type="text" name="tahunan" class="form-control mb-3" id="tahunan" placeholder="tahunan" autocomplete="off" autofocus >
                    </div>
                    <div class="form-group">
                      <label for="tahunan">Triwulan I :</label>
                      <input type="text" name="I" class="form-control mb-3" id="I" placeholder="I" autocomplete="off" autofocus >
                    </div>
                    <div class="form-group">
                      <label for="tahunan">Triwulan II :</label>
                      <input type="text" name="II" class="form-control mb-3" id="II" placeholder="II" autocomplete="off" autofocus >
                    </div>
                  <div class="form-group">
                    <label for="tahunan">Triwulan III :</label>
                    <input type="text" name="III" class="form-control mb-3" id="III" placeholder="III" autocomplete="off" autofocus >
                  </div>
                  <div class="form-group">
                    <label for="tahunan">Triwulan IV :</label>
                    <input type="text" name="IV" class="form-control mb-3" id="IV" placeholder="IV" autocomplete="off" autofocus >
                  </div>
        
                <!-- Tambahkan input form lainnya sesuai kebutuhan -->
                <button type="submit" class="btn btn-primary">Simpan</button>
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
{{-- <script>
  $(`form [name=sasaran]`).on('click', function(){
    $(this).empty()
   $(this).append(`@foreach ($sasarans as $sasaran)
                        <option value="{{ $sasaran->id }}">{{ $sasaran->sasaran }}</option>        
                            @endforeach`) 
    
});
$('form [name=sasaran]').on('change', function(){
    var nilai = $(this).val();

    // Menggunakan AJAX untuk mengirim data ke server
    var url = `{{ route('kinerjas.create') }}`;
    $.ajax({
    type: 'GET',
    url: url,
    data: { nilai: nilai },        
    success: function(data) {
      $(`form [name=kinerja]`).empty()

        if (data.data && data.data.length > 0) {
            for (var i = 0; i < data.data.length; i++) {
                var item = data.data[i];
                $(`form [name=kinerja]`).append(`<option value='${item.sasaran_id}'>${item.kinerja}</option>`)


                // Menampilkan informasi dalam konsol
                console.log('Ini data ke-' + (i + 1));
                console.log('Sasaran ID: ' + item.sasaran_id);
                console.log('Kinerja: ' + item.kinerja);
                console.log('------------------------------');
            }
        } else {
            console.log('Tidak ada data.');
        }
    },
    error: function(error) {
        console.error(error);
    }
});

});

            
            $(`form [name=kinerja]`).on('click', function(){
              
              
});
          function kinerja(){
            console.log('masuk om')
            $(`form [name=kinerja]`).empty()



}
</script> --}}
</body>
</html>
