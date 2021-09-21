@php
    Arr::set($attributes, 'class', Arr::get($attributes, 'class') . ' icon-select');
@endphp

{!! Form::customSelect($name, [$value => $value], $value, $attributes) !!}

@once
    <link media="all" type="text/css" rel="stylesheet" href="{{ Theme::asset()->url('fonts/feather-font/css/iconfont.css') }}">
    <script src="{{ Theme::asset()->url('js/icons-field.js') }}?v=1.0.1"></script>
@endonce