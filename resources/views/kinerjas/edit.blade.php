
@extends('template.dashboard')
@section('title', 'edit')
@section('content')
<form action="{{ route('kinerjas.update', $kinerja->id) }}" method="post">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="indikator_kinerja">Indikator Kinerja</label>
        <input type="text" name="indikator_kinerja" class="form-control" value="{{ $kinerja->indikator_kinerja }}" required>
    </div>
    <div class="form-group">
        <label for="sasaran">Sasaran</label>
        <input type="text" name="sasaran" class="form-control mb-3" value="{{ $kinerja->sasaran }}" required>
    </div>
    <button type="submit" class="btn btn-primary">Simpan</button>
</form>

@endsection

@section('inline_script')
@endsection    
