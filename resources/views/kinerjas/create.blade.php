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
              <li class="breadcrumb-item"><a href="{{ route('kinerjas.index') }}">Home</a></li>
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
           <form action="{{ route('kinerjas.store') }}" method="post">
                @csrf
                <div class="form-group">
                  <label for="sasaran">Sasaran</label>
                    <select name="sasaran" id="" class="form-control">
                      <span class="pilhihn">
                        <option value="">--sasaran--</option>

                      </span>
                      <!-- <div class="selectSasaran bg-danger">
                      </div> -->
                  
                    </select>
                </div>
                <div class="form-group">
                    <label for="format">Format</label>
                  <select name="format" id="" class="form-control">
                    <option value="">--format--</option>
                    <option value="pilih">Pilih Indikator</option>
                    <option value="tambah">Buat Indikator</option>
                  </select>

                    {{-- <input type="text" name="kinerja" class="form-control mb-3" required> --}}
                </div>
                <div class="form-group" id="format">
                    

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
<script>
  $(document).ready(function(){
    console.log('titit')
    $('form [name=format]').on('change', function () {
    var nilai = $(this).val();
    var tempat = $('#format');

    tempat.empty();

    switch (nilai) {
        case '':
            format = '';
            break;
        case 'pilih':
            format = `<label for="kinerja">Indikator Kinerja</label>
                      <select name="kinerja" id="pilih" class="form-control" onclick="taik()">
                        <option value="">--kinerja--</option>
                      </select>`;
            break;
        case 'tambah':
            format = `<label for="kinerja">Indikator Kinerja</label>
                      <input type="text" name="kinerja" class="form-control mb-3" required>`;
            break;
        default:
            break;
    }

    tempat.append(format);
});

$('form').on('click', '[name=sasaran]', function(){
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
  $('form').on('change', '[name=sasaran]', function() {
  
    console.log('henshin');
    $('#pilih').empty()
    $('#pilih').append('<option value="">--kinerja--</option>')
  
});

  // $('form').on('change', '[name=sasaran]', function(){
  //   var hasil = $(this).val();
  //   $(this).val(hasil);
  //   console.log($(this).val()+'suuuu');
  //   kinerja()
  // });

  $(`form [name=kinerja]`).on(`click`, function(){
console.log('susu jepang')
  });
  
  // --------------------
});

function taik(){
  console.log('taik')
  var selectedValue = $('form [name=sasaran]').val()
    console.log(selectedValue);
    url = `{{ route('kinerjas.create') }}`;
    console.log('masuuk om');
    if($('#pilih').val() == ''){

      $('form [name=kinerja]').empty();
      $.ajax({
      type: 'GET',
      url: url,
      data: { nilai: selectedValue },        
      success: function(data) {
          console.log('ini datanya:' + data.data);
          console.log('ini datanya:' + data);
          $(`form [name=kinerja]`).empty();
  
          if (data.data && data.data.length > 0) {
              for (var i = 0; i < data.data.length; i++) {
                  var item = data.data[i];
                  $('form [name=kinerja]').append(`<option value='${item.id}'>${item.kinerja}</option>`);
      
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
    }

}

// $('form [name=sasaran]').on('click', function(){
//   $(this).empty();
//     $(this).append(`@foreach ($sasarans as $sasaran)
//                         <option value="{{ $sasaran->id }}">{{ $sasaran->sasaran }}</option>        
//                     @endforeach`);
// });

// $('#pilih').on('click', function(){
  // console.log('masuuk om');
  //   var nilai = $(this).val();
  //   $(this).empty();
    // Lakukan sesuatu dengan nilai
// });


  // $('form').on('click', '#pilih', function(){
  //     // Lakukan sesuatu dengan nilai kinerja
  //   //  kinerja();
  //   //  var nilai = $('form [name=sasaran]').val()
  //   //   console.log('nilaunya->'+nilai);
  //     url = `{{ route('kinerjas.store') }}`;
  //     var selectedValue = $(`form [name=sasaran]`).val()
  //     console.log('masuuk om' + selectedValue);
  //     // var nilai = $(this).val();
  //     $(this).empty();
      
  //       $.ajax({
  //         type: 'GET',
  //         url: url,
  //         // data: { nilai: formElement.find('[name=sasaran]').val() },  // Gunakan formElement untuk merujuk ke elemen form        
  //         data: { nilai: $(`form [name=sasaran]`).val() },  // Gunakan formElement untuk merujuk ke elemen form        
  //         success: function(data) {
  //           $(`form [name=kinerja]`).empty()
      
  //             if (data.data && data.data.length > 0) {
  //                 for (var i = 0; i < data.data.length; i++) {
  //                     var item = data.data[i];
  //                     $(this).append(`<option value='${item.sasaran_id}'>${item.kinerja}</option>`)
      
      
  //                     // Menampilkan informasi dalam konsol
  //                     console.log('Ini data ke-' + (i + 1));
  //                     console.log('Sasaran ID: ' + item.sasaran_id);
  //                     console.log('Kinerja: ' + item.kinerja);
  //                     console.log('------------------------------');
  //                 }
  //             } else {
  //                 console.log('Tidak ada data.');
  //             }
  //         },
  //         error: function(error) {
  //             console.error(error);
  //         }
  //     });
  // });
// $('form #pilih').on('click', function() {
  // Lakukan sesuatu dengan ni
//      kinerja();
// });

function kinerja(){
  
}


            
            
</script>
</body>
</html>









{{-- 

@extends('template.dashboard')
@section('title', 'Tambah')
@section('content')
<h2>Tambah Data</h2>

<form class="mt-3" action="{{ route('kinerjas.store') }}" method="post">
    @csrf
    <div class="form-group">
        <select name="sasaran_id" id="" class="form-control">
            @foreach ($sasarans as $sasaran)
            <option value="{{ $sasaran->id }}">{{ $sasaran->sasaran }}</option>        
                @endforeach
        </select>
    </div>
    <div class="form-group">
        <label for="sasaran">Indikator Kinerja</label>
        <input type="text" name="kinerja" class="form-control mb-3" required>
    </div>
    <button type="submit" class="btn btn-primary">Tambah</button>
</form>
@endsection

@section('inline_script')
@endsection
    
     --}}
