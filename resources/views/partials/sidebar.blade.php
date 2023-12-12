<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="https://uinsgd.ac.id/" class="brand-link">
      <img src="{{ asset('img/logouin.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">UIN SGD BANDUNG</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('img/user1.png') }}"class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">User</a>
        </div>
      </div>

     

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Data
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('sasarans.index') }}" class="nav-link {{ Request::is('sasarans') ? 'active' : '' }}">
                  <i class="bi bi-folder2-open"></i>
                  <p>Sasaran</p>
                </a>
              </li>
             </ul>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('kinerjas.index') }}" class="nav-link {{ Request::is('kinerjas') ? 'active' : '' }}">
                  <i class="bi bi-folder2-open"></i>
                  <p>Kinerja</p>
                </a>
              </li>
             </ul>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('targets.index') }}" class="nav-link {{ Request::is('targets') ? 'active' : '' }}">
                  <i class="bi bi-folder2-open"></i>
                  <p>Target</p>
                </a>
              </li>
             </ul>

      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>