<x-akunpenjual-guest-layout>
    <div class="group-187">
        <a href="/masuksbg" style="text-decoration:none">
            <img class="vector" src="{{ URL::asset('image/vector.svg') }}" alt="Vector" />
            <div class="kembali">Kembali</div>
        </a>
    </div>

    <div class="title">Sign Up</div>

    <div class="overlap-group3">
        <div class="overlap-group">
            <img class="group-408" src="{{ URL::asset('image/group408.png') }}" alt="Group 408" />
            {{-- <div class="rectangle-115"></div> --}}
        </div>
        <select class="dropdown overlap-group-12" name="test_redirect">
            <option value="akunpenjual/register" class="overlap-group-12" selected>PENJUAL</option>
            <option value="akunpembeli/register" class="overlap-group-12">PEMBELI</option>
        </select>
        <!-- <div class="dropdown dropdown-1">
            <div class="dropdown-default">
                <div class="pembeli">PEMBELI</div>
                <img class="vector-1" src="{{ URL::asset('image/vector-3.svg') }}" alt="Vector" />
            </div>
        </div> -->
    </div>

    @if (session('error'))
        <div class="alert alert-danger">
            <b>Opps!</b> {{ session('error') }}
        </div>
    @endif

    <form method="POST" action="{{ route('akunpenjual.register') }}">
        @csrf
        <div class="login">
            <!-- Email Address -->
            <div class="overlap-group-1">
                <img class="icon-person" src="{{ URL::asset('image/iconperson.png') }}" alt="icon person" />
                <x-text-input id="email" class="form-control" type="email" name="email" :value="old('email')"
                    placeholder="Email" required autocomplete="username" />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <!-- Name -->
            <div class="overlap-group-1">
                <img class="icon-person" src="{{ URL::asset('image/iconperson.png') }}" alt="icon person" />
                <x-text-input id="name" class="form-control" type="text" name="name" :value="old('name')"
                    placeholder="Nama" required autofocus autocomplete="name" />
                <x-input-error :messages="$errors->get('name')" class="mt-2" />
            </div>

            <!-- Password -->
            <div class="overlap-group-1">
                <img class="icon-unlock" src="{{ URL::asset('image/iconunlock.png') }}" alt="icon unlock" />
                <x-text-input id="password" class="form-control" type="password" name="password" required
                    placeholder="Password" autocomplete="new-password" />
                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>

            <!-- Confirm Password -->
            <div class="overlap-group-1">
                <img class="icon-unlock" src="{{ URL::asset('image/iconunlock.png') }}" alt="icon unlock" />
                <x-text-input id="password_confirmation" class="form-control" type="password"
                    placeholder="Ulangi Password" name="password_confirmation" required autocomplete="new-password" />
                <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
            </div>

            <div>
                <div class="group-155">
                    <button name="daftar" type="submit" class="overlap-group1-1" style="border:none">
                        <div class="overlap-group1-1">{{ __('Daftar') }}</div>
                    </button>
                </div>
            </div>
        </div>
    </form>
</x-akunpenjual-guest-layout>
