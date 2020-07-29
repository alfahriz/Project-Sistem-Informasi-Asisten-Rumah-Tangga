<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ArtRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        if ($this->method() == 'PATCH') {
            $nikrules          = 'required|string|size:4|unique:art,nik,'.$this->get('id');
            $notelefonrules    = 'sometimes|nullable|numeric|digits_between:10,15|unique:telefon,notelefon,'.$this->get('id').',idtelefon';
        } else {
            $nikrules          = 'required|string|size:4|unique:art,nik';
            $notelefonrules    = 'sometimes|nullable|numeric|digits_between:10,15|unique:telefon,notelefon';
        }

        return [
            'nik'        => $nikrules,
            'foto'       => 'sometimes|nullable|image|mimes:jpeg,jpg,png|max:1000|dimensions:width=450,height=600',
            'namaart'    => 'required|string|max:50',
            'tl'         => 'required|date',
            'jk'         => 'required|in:L,P',
            'notelefon'  => $notelefonrules,
            'idbagian'   => 'required',
        ];
    }
}