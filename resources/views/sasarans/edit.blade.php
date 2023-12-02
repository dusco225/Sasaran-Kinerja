



<form action="{{ route('sasarans.update', $sasaran->id) }}" method="post">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="sasaran">Sasaran</label>
        <input type="text" name="sasaran" class="form-control mb-3" value="{{ $sasaran->sasaran }}" required>
    </div>
    <button type="submit" class="btn btn-primary">Simpan</button>
</form>

    
