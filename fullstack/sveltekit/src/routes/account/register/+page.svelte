<script>
  let { data } = $props();
  import AuthenticityFormElement from "$lib/components/authenticityFormElement.svelte";
</script>
<form action="#" method="POST" class="card border-[1px] border-neutral-500 preset-filled-surface-100-900 w-full max-w-md space-y-4 p-4 mx-auto mt-32">
	<h1 class="text-2xl text-center">Register</h1>
	<AuthenticityFormElement {data}/>
	<label class="label">
		<span class="label-text">Name</span>
		<input class="input" type="text" name="name" placeholder="Abdu Allah" />
	</label>

	<label class="label">
		<span class="label-text">Email</span>
		<input class="input" type="text" name="email" placeholder="bismi-allah@alhamdo-li-allah.com" />
	</label>

	<label class="label">
		<span class="label-text">Password</span>
		<input class="input" type="password" name="password" placeholder="******" />
	</label>

	<fieldset class="flex justify-end">
		<!-- Button -->
		<button type="submit" class="btn preset-filled-primary-500">
			Register
		</button>
	</fieldset>

	<hr class="hr border-t-2" />

    <p class="flex justify-between">
        <span>already have an account?</span>
        <a href="/account/login" class="font-semibold text-indigo-600 hover:text-indigo-500">
            Login
        </a>
    </p>
</form>
