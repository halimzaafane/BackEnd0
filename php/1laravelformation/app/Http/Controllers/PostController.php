<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        // Supprimer la colonne à l'ID 12 dans la base de donnée
    //  $post = Post::find(12);
    //  $post->delete();
    //  dd('supprimé!');

        // Modifier la colonne dans la base de donnée
    //  $post->update([
    //     'title' => 'titre édité'
    //  ]);  


     $posts = Post::all();

        return view('articles', [
            'posts' => $posts
        ]);
    }

    public function show($id)
    {
        $post = Post::findOrFail($id);
        // $post = Post::where('title', 'Velit nisi consequatur eum delectus dolorem officiis repudiandae id.')->firstOrFail();

        return view('article', [
            'post' => $post
        ]);
    }

    public function create()
    {
        return view('form');
    }

    public function store(Request $request)
    {
        // $post = new Post;
        // $post->title = $request->title;
        // $post->content =$request->content;
        // $post->save();

        Post::create([
            'title' => $request->title,
            'content' => $request->content
        ]);

        dd('Post crée !');
    }

    public function contact()
    {
        return view('contact');
    }
}
