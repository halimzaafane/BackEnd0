@extends('layouts.app')

@section('content')
<h1>Liste des articles</h1>
    @if ($posts->count() > 0)
        @foreach ($posts as $post)
            <h3><a href="{{ route('post.show', ['id' => $post->id]) }}">{{ $post->title }}</a></h3>    
        @endforeach
        @else
            <span>Aucun posts en base de données</span>
        @endif
    @endsection