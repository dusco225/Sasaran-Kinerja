@extends('template.dashboard')
@section('title', 'Tambah Data')
@section('content')
<h2>Tambah Data</h2>

<form class="mt-3" action="{{ route('sasarans.store') }}" method="post">
    @csrf
    <div class="form-group">
        <label for="sasaran">Sasaran Program</label>
        <input type="text" name="sasaran" class="form-control mb-3" required>
    </div>
    <button type="submit" class="btn btn-primary">Tambah</button>
</form>

@endsection

@section('inline_script')
@endsection  
    
