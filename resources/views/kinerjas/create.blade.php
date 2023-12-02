


<h2>Tambah Data</h2>

<form class="mt-3" action="{{ route('kinerjas.store') }}" method="post">
    @csrf
    <div class="form-group">
        <label for="indikator_kinerja">Indikator Kinerja</label>
        <input type="text" name="indikator_kinerja" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="sasaran">Sasaran</label>
        <input type="text" name="sasaran" class="form-control mb-3" required>
    </div>
    <button type="submit" class="btn btn-primary">Tambah</button>
</form>

    
    
