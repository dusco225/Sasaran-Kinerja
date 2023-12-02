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
    
    
