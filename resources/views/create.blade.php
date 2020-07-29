@extends('template')

@section('main')
<div id="art">
	<h2>Tambah Asisten Rumah Tangga</h2>
	<form action="{{ url('art') }}" method="POST" enctype="multipart/form-data">
		@csrf
		@include('form')
	</form>
</div>
@stop

@section('footer')
	@include('footer')
@stop