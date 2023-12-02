


    <div class="content">
        <h1>Indikator Kinerja<br></h1>
        <a href="{{ route('kinerjas.create') }}" class="btn btn-primary mb-3 mt-2">Tambah Data</a>
        <table class="table ">
            <thead class="table-primary">
            <tr>
                <th scope="row">No</th>
                <th scope="row">Sasaran</th>
                <th scope="row">Indikator</th>
                <th scope="row">Aksi</th>
            </tr>
        </thead>
            <tbody class="table-group-divider">
                <?php $no = 1; ?>

                @foreach ($kinerjas as $kinerja)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $kinerja->sasaran }}</td>
                        <td>{{ $kinerja->indikator_kinerja }}</td>
                        <td><a href="{{ route('kinerjas.edit', $kinerja->id) }}" class="btn btn-warning m-1">Edit</a>
                        <form action="{{ route('kinerjas.destroy', $kinerja->id) }}" method="post" style="display: inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Yakin Hapus?')">Hapus</button>
                        </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
