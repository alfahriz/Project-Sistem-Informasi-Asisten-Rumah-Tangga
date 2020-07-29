@extends('template')

@section('main')
<div id="art">
	<h2>Edit Asisten Rumah Tangga - {{$art->namaart}} - {{$art->tl->format('d-m-Y')}}</h2>
	<form action="{{ url('art/'.$art->id.'/update') }}" method="post" enctype="multipart/form-data">
		@csrf
		@method('patch')
		<input type="hidden" name="id" value="{{$art->id}}">
		<input type="hidden" name="idtelefon" value="{{$art->id}}">
		@include('formed')
	</form>
</div>
@endsection

@section('footer')
	@include('footer')
@endsection