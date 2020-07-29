@extends('template')

@section('main')
<div id="art">
	<h2>Detail Asisten Rumah Tangga</h2>
	<table class="table table-striped">
		<tr>
			<th>NIK</th>
			<td>{{ $art->nik }}</td>
		</tr>
		<tr>
			<th>Foto Asisten Rumah Tangga</th>
			<td>
				@if (isset($art->foto))
					<img src="{{ asset('fotoupload/'.$art->foto) }}" width="75" height="100">
				@else
					@if ($art->jk== 'L')
						<img src="{{ asset('fotoupload/L.png') }}" width="75" height="100">
					@else
						<img src="{{ asset('fotoupload/P.png') }}" width="75" height="100">
					@endif
				@endif
			</td>
		</tr>
		<tr>
			<th>Nama Asisten Rumah Tangga</th>
			<td>{{ $art->namaart }}</td>
		</tr>
		<tr>
			<th>Tanggal Lahir</th>
			<td>{{ $art->tl->format('d-m-Y') }}</td>
		</tr>
		<tr>
			<th>Jenis Kelamin</th>
			<td>
				@if ($art->jk=='L')
					Laki-Laki
				@else
					Perempuan
				@endif
			</td>
		</tr>
		<tr>
			<th>Nomor Telefon</th>
			<td>{{ !empty($art->telefon->notelefon) ? $art->telefon->notelefon: '-' }}</td>
		</tr>
		<tr>
			<th>Bagian</th>
			<td>{{ $art->bagian->namabagian }}</td>
		</tr>
		<tr>
			<th>Fasilitas</th>
			<td>
				@foreach ($art->fasilitas as $fasilitas)
					{{ $fasilitas->namafasilitas }},
				@endforeach
			</td>
		</tr>
	</table>

	<div align="right" id="form-group row">
		<a href="{{ '/art' }}" class="btn btn-primary">
			Kembali
		</a>
	</div>
</div>
@stop

@section('footer')
	@include('footer')
@stop