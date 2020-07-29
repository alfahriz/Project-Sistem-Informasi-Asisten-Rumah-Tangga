<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Art;
use App\Telefon;
use App\Bagian;
use App\Fasilitas;
use App\Http\Requests\ArtRequest;
use Storage;

class artController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function homepage() {
		$halaman='homepage';
		return view('homepage', compact('halaman'));
	}

	public function about() {
		$halaman='about';
		return view('about', compact('halaman'));
	}

	public function index() {
		$artlist=Art::orderBy('namaart', 'asc')->paginate(4);
		$jumlahart=Art::count();
		return view('index', compact('artlist', 'jumlahart'));
	}

	public function create() {
		return view('create');
	}

	public function show(Art $art) {
		return view('show', compact('art'));
	}

	public function store(ArtRequest $request) {
		$input=$request->all();

		if ($request->hasFile('foto')) {
			$input['foto']=$this->uploadFoto($request);
		}
		$art=Art::create($input);

		if ($request->filled('notelefon')) {
			$this->insertTelefon($art, $request);
		}
		$art->Fasilitas()->attach($request->input('fasilitas'));
		return redirect('art');
	}

	public function edit(Art $art) {
		if (!empty($art->telefon->notelefon)) {
			$art->notelefon=$art->telefon->notelefon;
		}
		return view ('edit', compact('art'));
	}

	public function update(Art $art, ArtRequest $request) {
		$input=$request->all();

		if ($request->hasFile('foto')) {
			$input['foto']=$this->updateFoto($art, $request);
		}
		$art->update($input);
		$this->updateTelefon($art, $request);
		$art->Fasilitas()->sync($request->input('fasilitas'));
		return redirect('art');
	}

	public function delete(Art $art) {
		$this->hapusFoto($art);

        $art->delete();
        return redirect('art');
	}

	private function insertTelefon(Art $art, ArtRequest $request){
		$telefon=new Telefon;
		$telefon->notelefon=$request->input('notelefon');
		$art->telefon()->save($telefon);
	}

	private function updateTelefon(Art $art, ArtRequest $request){
	//update jika sudah ada sebelumnya
		if ($art->telefon) {
			//jika nomor tidak diubah
			if ($request->filled('notelefon')==$art->telefon->notelefon) {
				$art->telefon()->delete();
				$telefon=new Telefon;
				$telefon->notelefon=$request->input('notelefon');
				$art->telefon()->save($telefon);
			}
			//jika telefon diubah, update
			else if ($request->filled('notelefon')) {
				$telefon=Telefon::where('idtelefon', $art->id)->update(['notelefon'=>$request->input('notelefon')]);
			}
			//jika telefon dihapus
			else {
				$art->telefon()->delete();
			}
		}
		//buat entry baru jika sebelumnya tidak pernah ada
		else {
			if ($request->filled('notelefon')) {
				$telefon=new Telefon;
				$telefon->notelefon=$request->input('notelefon');
				$art->telefon()->save($telefon);
			}
		}
	}

	private function uploadFoto(ArtRequest $request){
		$foto=$request->file('foto');
		$ext=$foto->getClientOriginalExtension();
		
		if ($request->file('foto')->isValid())
		{
			$fotoname=date('YmdHis').".$ext";
			$request->file('foto')->move('fotoupload', $fotoname);
			return $fotoname;
		}
		return false;
	}

	private function updateFoto(Art $art, ArtRequest $request){
		if ($request->hasFile('foto')) {
			$exist=Storage::disk('foto')->exists($art->foto);

			if (isset($art->foto) && $exist) {
				$delete = Storage::disk('foto')->delete($art->foto);
			}

			$foto=$request->file('foto');
			$ext=$foto->getClientOriginalExtension();
			if ($request->file('foto')->isValid())
			{
				$fotoname=date('YmdHis').".$ext";
				$uploadpath='fotoupload';
				$request->file('foto')->move($uploadpath, $fotoname);
				return $fotoname;
			}
		}
	}

	private function hapusFoto(Art $art){
		$isfotoexist=Storage::disk('foto')->exists($art->foto);
		if ($isfotoexist) {
			Storage::disk('foto')->delete($art->foto);
		}
	}
}
?>