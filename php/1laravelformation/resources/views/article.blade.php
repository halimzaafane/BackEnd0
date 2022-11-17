@extends('layouts.app')

@section('content')
    <h1>{{ $post->content }}</h1>
    <span>{{ $post->image ? $post->image->path : "pas d'image" }}</span>

    <hr>

     {{-- Affichage des commentaires et si il n'y en n'a pas cela boucle dans le @empty pour renvoyer le message du span --}}
    {{-- @forelse($post->comments as $comment)
        <div>{{ $comment->content }} | créé le {{ $comment->created_at->format('d/m/Y') }} </div>
    @empty
        <span>Ce post ne contient pas de commentaires.</span>    
    @endforelse --}}

    <hr>

    @forelse($post->tags as $tag)
        <span>{{ $tag->name }}</span>
    @empty
        <span>Ce post ne contient pas de tag.</span>
    @endforelse

@endsection

