@props(['active'])

@php
$classes = ($active ?? false)
            ? 'block w-full ps-3 pe-4 py-2 border-l-4 border-orange-950 text-start text-base font-medium text-gray-300 bg-orange-950/50 focus:outline-none focus:text-gray-200 focus:bg-orange-900 focus:border-gray-300 transition duration-150 ease-in-out'
            : 'block w-full ps-3 pe-4 py-2 border-l-4 border-transparent text-start text-base font-medium text-gray-400 hover:text-gray-200 hover:bg-orange-900 hover:border-orange-950 focus:outline-none focus:text-gray-200 focus:bg-orange-950/50 focus:border-orange-950 transition duration-150 ease-in-out';
@endphp

<a {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>
