@extends('template')

@section('main')
<div id="art">
	<h2>Asisten Rumah Tangga</h2>
	<hr>

	@if (!empty($artlist))
	<table class="table">
		<thead>
			<tr>
				<th>NIK</th>
				<th>Nama ART</th>
				<th>Telefon</th>
				<th>Bagian ART</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			@foreach($artlist as $art)
			<tr>
				<td>{{ $art->nik }}</td>
				<td>{{ $art->namaart }}</td>
				<td>{{ !empty($art->telefon->notelefon) ? $art->telefon->notelefon: '-' }}</td>
				<td>{{ $art->bagian->namabagian }}</td>
				<td>
					<a href="{{ url('art/'.$art->id) }}" class="btn btn-success btn-sm">Detail</a>
					<a href="{{ url('art/edit/'.$art->id) }}" class="btn btn-warning btn-sm">Edit</a>
					<a href="{{ url('art/'.$art->id.'/delete') }}" class="btn btn-danger btn-sm">Hapus</a>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	@else
		<p>Tidak ada data Asisten Rumah Tangga.</p>
	@endif

	<div class="table-nav">
		<div class="jumlahdata">
			<strong>Jumlah Asisten Rumah Tangga: {{ $jumlahart }}</strong>
		</div>
		<div class="paginate">
			{{ $artlist->links() }}
		</div>
	</div>

	<div class="tombol-nav">
		<a href="{{ 'art/create' }}" class="btn btn-primary">Tambah Asisten Rumah Tangga</a>
	</div>

</div>
@stop

@section('footer')
	@include('footer')
@stop