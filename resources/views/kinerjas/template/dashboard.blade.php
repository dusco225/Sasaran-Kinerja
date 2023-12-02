<!DOCTYPE html>
<html>

<head>
  <title>@yield('title')</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- Tautan untuk Font Awesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-xr1kPyRKYOTSwHSL1L2VgMowwA6fCcRVF1AqAd5gGQdfBz9VfUKb92ShyOH8LqBq5U4+CvA0o+6w9DTlVgKTLw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- Masukkan CSS dan script lainnya -->
  <style>
    .navbar-brand {
      margin-right: auto;
    }

    .navbar-toggler-icon {
      background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='rgba(0,0,0,0.5)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
    }

    .sidebar-toggler {
      background: transparent;
      border: none;
      outline: none;
      color: white;
      font-size: 1.5rem;
      cursor: pointer;
      margin-right: 15px; /* Margin untuk tombol sidebar */
    }
  </style>
</head>

<body>

  <!-- Bagian header -->
  <div class="body-container m-0 p-0">
    <nav class="navbar navbar-sm navbar-expand-lg navbar-fixed" style="background-color: #004225;">
      <div class="container-fluid">
        <button class="sidebar-toggler" onclick="toggleSidebar()">
          <i class="fas fa-bars"></i> <!-- Ikon sidebar -->
        </button>

        <a class="navbar-brand text-white" href="#">
          <b>
            {{env('APP_NAME')}}
          </b>
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Tempat untuk menambahkan elemen lain di navbar -->
        </div>
      </div>
    </nav>
  </div>

  <main>
    @yield('content')
  </main>

  <!-- Masukkan script lainnya jika diperlukan -->
  @yield('inline_script')

  <!-- Tautan untuk Bootstrap JS (Pastikan Anda memasukkan jQuery dan Popper.js jika diperlukan) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5+zgbY9v9E69Jwii8cAPlktgz5F3cJLve+8EvoB1" crossorigin="anonymous"></script>

  <!-- Script untuk toggle sidebar -->
  <script>
    function toggleSidebar() {
      // Ganti 'sidebar' dengan ID dari elemen sidebar Anda
      var sidebar = document.getElementById('sidebar');
      sidebar.classList.toggle('active');
    }
  </script>
</body>

</html>
