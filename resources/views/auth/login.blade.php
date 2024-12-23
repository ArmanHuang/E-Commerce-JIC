<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />
    <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">
    <form method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="current-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        <!-- <div class="block mt-4">
            <label for="remember_me" class="inline-flex items-center">
                <input id="remember_me" type="checkbox" class="rounded dark:bg-white border-gray-300 dark:border-gray-700 text-rose-300 shadow-sm focus:ring-rose-400 dark:focus:ring-rose-400 dark:focus:ring-offset-gray-800" name="remember">
                <span class="ms-2 text-sm text-gray-600 dark:text-gray-400">{{ __('Remember me') }}</span>
            </label>
        </div> -->

        <!-- <div class="flex items-center justify-end mt-4"> -->
            <!-- @if (Route::has('password.request'))
                <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-rose-400 dark:focus:ring-offset-gray-800" href="{{ route('password.request') }}">
                    {{ __('Forgot your password?') }}
                </a>
            @endif -->

            <!-- <a href="/" class="underline text-sm text-black hover:text-gray-600 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-black">
                Back
            </a>
            <a href="register" class="btn text-sm text-black hover:text-gray-600 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-black">
                register
            </a>

            <x-primary-button class="ms-3">
                {{ __('Log in') }}
            </x-primary-button>
        </div> -->

        <div class="flex flex-col items-center justify-end mt-4">
            <!-- Login Button -->
            <x-primary-button class="w-full py-3 text-lgflex justify-center items-center">
                {{ __('Sign In') }}
            </x-primary-button>

            <!-- Links Below the Login Button -->
            <div class="mt-4 text-sm text-black text-center">
                Doesn't have an account yet ? 
                <a href="register" class="text-blue-600 hover:underline">
                    Sign Up
                </a>
                or
                <a href="/" class="text-blue-600 hover:underline">
                    Back
                </a>
            </div>
        </div>
    </form>
</x-guest-layout>
