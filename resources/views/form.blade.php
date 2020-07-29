@if (isset($art))
	{!! form::hidden('id', $art->id) !!}
@endif

@if ($errors->any())
	<div class="form-group row {{ $errors->has('nik')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>NIK: </label>
	<input name="nik" type="text" class="form-control" value="{{ old('nik') }}">
	@if($errors->has('nik'))
		<span class="help-block">
			<strong>{{ $errors->first('nik') }}</strong>
		</span>
	@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('foto')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>FOTO: </label>
	<input name="foto" type="file" class="form-control">
	@if($errors->has('foto'))
	<span class="help-block">
		<strong>{{ $errors->first('foto') }}</strong>
	</span>
	@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('namaart')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>NAMA ART: </label>
	<input name="namaart" type="text" class="form-control" value="{{ old('namaart') }}">
	@if($errors->has('namaart'))
		<span class="help-block">
			<strong>{{ $errors->first('namaart') }}</strong>
		</span>
	@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('tl')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>TANGGAL LAHIR: </label>
	<input name="tl" type="date" class="form-control" value="{{ old('tl') }}">
	@if($errors->has('tl'))
		<span class="help-block">
			<strong>{{ $errors->first('tl') }}</strong>
		</span>
	@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('jk')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>JENIS KELAMIN: </label>
	<div class="radio">
		<label><input type="radio" name="jk" value="L" id="jk">Laki-Laki</label>
		<label><input type="radio" name="jk" value="P" id="jk">Perempuan</label>
	</div>
	@if($errors->has('jk'))
		<span class="help-block">
			<strong>{{ $errors->first('jk') }}</strong>
		</span>
	@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('notelefon')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>NOMOR TELEFON: </label>
	<input name="notelefon" type="text" class="form-control" value="{{ old('notelefon') }}">
	@if($errors->has('notelefon'))
		<span class="help-block">
			<strong>{{ $errors->first('notelefon') }}</strong>
		</span>
	@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('idbagian')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>BAGIAN: </label>
	<select name="idbagian" id="idbagian" class="form-control">
		<option value="">- Pilih Bagian -</option>
		@foreach ($bagianlist as $idbagian => $name)
			<option value="{{ $idbagian }}" @if ($idbagian==old('idbagian')) {{ 'selected' }} @endif>{{ $name }}</option>
		@endforeach
	</select>
		@if($errors->has('idbagian'))
			<span class="help-block">
				<strong>{{ $errors->first('idbagian') }}</strong>
			</span>
		@endif
	</div>
<br>

@if ($errors->any())
	<div class="form-group row {{ $errors->has('fasilitas')?
	'has-error' : 'has-success' }}">
@else
	<div id="form-group row">
@endif
	<label>FASILITAS: </label>
	@if(count($fasilitaslist)>0)
		<div class="checkbox">
		@foreach ($fasilitaslist as $idfasilitas => $name)
			<label><input type="checkbox" name="fasilitas[]" id="fasilitas" value="{{ $idfasilitas }}">{{ $name }}</label>
		@endforeach
		</div>
	@endif
	@if($errors->has('fasilitas'))
		<span class="help-block">
			<strong>{{ $errors->first('fasilitas') }}</strong>
		</span>
	@endif
	</div>
<br>

<br>
<div align="right" id="form-group row">
	<input type="submit" class="btn btn-primary" value="Simpan">
</div>