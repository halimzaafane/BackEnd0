@extends('layouts.app')

@section('content')
    <h1>{{ $post->content }}</h1>

    <hr>

     {{-- Affichage des commentaires et si il n'y en n'a pas cela boucle dans le @empty pour renvoyer le message du span --}}
    @forelse($post->comments as $comment)
        <div>{{ $comment->content }} | créé le {{ $comment->created_at->format('d/m/Y') }} </div>
    @empty
        <span>Ce post ne contient pas de commentaires</span>    
    @endforelse

@endsection

