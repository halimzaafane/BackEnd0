<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    {{-- <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('scss/app.scss')}}"> --}}
    <title>Mon super site</title>
</head>
<body>
    @include('partials.navbar')
    <div class="container mx-auto">
       @yield('content') 
    </div>
    {{-- <script src="{{ asset('js/app.js')}}"></script> --}}
</body>
</html>