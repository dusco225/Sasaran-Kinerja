


    <div class="content">
        <h1>Sasaran Program<br></h1>
        <a href="{{ route('sasarans.create') }}" class="btn btn-primary mb-3 mt-2">Tambah Data</a>
        <table class="table ">
            <thead class="table-primary">
            <tr>
                <th scope="row">No</th>
                <th scope="row">Sasaran</th>
                <th scope="row">Aksi</th>
            </tr>
        </thead>
            <tbody class="table-group-divider">
                <?php $no = 1; ?>

                @foreach ($sasarans as $sasaran)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $sasaran->sasaran }}</td>
                        <td><a href="{{ route('sasarans.edit', $sasaran->id) }}" class="btn btn-warning m-1 bi bi-pencil-square">Edit</a>
                        <form action="{{ route('sasarans.destroy', $sasaran->id) }}" method="post" style="display: inline">
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
