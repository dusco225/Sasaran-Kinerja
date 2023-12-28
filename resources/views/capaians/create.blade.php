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
              <li class="breadcrumb-item"><a href="{{ route('capaians.index') }}">Home</a></li>
              <li class="breadcrumb-item active">Tambah Capaian</li>
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
                <h4>Tambah Capaian</h4>
            </div>
          <div class="card-body">
            <div class="card-body">
              <form action="{{ route('capaians.store') }}" method="POST">
                @csrf
  
                <div class="form-group">
                  <label for="sasaran_id">Sasaran :</label>
                  <select class="form-control" id="sasaran_id" name="sasaran_id" autofocus>
                    <option value="">--sasaran--</option>
                  </select>
                </div>
  
                <div class="form-group">
                  <label for="kinerja_id">Indikator Kinerja :</label>
                  <select class="form-control" id="kinerja_id" name="kinerja_id" autofocus>
                    <option value="">--kinerja--</option>
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
</div>
  <!-- Main Footer -->
  <footer class="main-footer">
   @include('Partials.footer')
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
@include('Partials.script')
<script>
  
  $(document).ready(function(){
   
   
$('form').on('click', '[name=sasaran_id]', function(){
      // Lakukan sesuatu dengan nilai sasaran
      if ($(this).val() === '') {
    console.log('masuk oom');
    $(this).empty();
    $(this).html(`
        @foreach ($sasarans as $sasaran)
            <option value="{{ $sasaran->id }}">{{ $sasaran->sasaran }}</option>        
        @endforeach
    `);
}
      
    
  });
  $('form').on('change', '[name=sasaran_id]', function() {
  
    
    $('form [name=kinerja_id]').empty()
    // $('form [name=kinerja_id]').append('<option value="">--kinerja--</option>')
    
  var selectedValue = $('form [name=sasaran_id]').val()
    console.log(selectedValue);
     
      $.ajax({
      type: 'GET',
      url: `{{ route('targets.create') }}`,
      data: { nilai: selectedValue },        
      success: function(data) {
          console.log('ini datanya:' + data.data);
          console.log('ini datanya:' + data);
          $(`form [name=kinerja]`).empty();
  
          if (data.data && data.data.length > 0) {
              for (var i = 0; i < data.data.length; i++) {
                  var item = data.data[i];
                  $('form [name=kinerja_id]').append(`<option value='${item.id}'>${item.kinerja}</option>`);
      
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
  });




            
            
</script>
</body>
</html>
