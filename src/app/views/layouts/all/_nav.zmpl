@args links: anytype

<nav class="mx-auto flex max-w-7xl items-center justify-between p-6 lg:px-8" aria-label="Global">
    <div class="flex lg:flex-1">
        <a href="#" class="-m-1.5 p-1.5">
            <span class="sr-only">Your Company</span>
            <img class="h-8 w-auto" src="/logo.png" alt="logo">
        </a>
  </div>
    <div class="flex lg:hidden" data-menu-button>
        <button type="button" class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700">
            <span class="sr-only">Open main menu</span>
            <svg class="size-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true" data-slot="icon">
                <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
            </svg>
        </button>
    </div>
    <div class="hidden lg:flex lg:gap-x-12">
    @zig {
        inline for (links) |link| {    
        <a href="{{ link.href }}" class="text-sm/6 font-semibold text-gray-900">{{ link.title }}</a>
        }
    }
    @partial layouts/all/select_lang
    </div>
</nav>

<!-- Mobile menu, show/hide based on menu open state. -->
<div class="lg:hidden" role="dialog" aria-modal="true" data-mobile-menu>
<!-- Background backdrop, show/hide based on slide-over state. -->
    <div class="fixed inset-0 z-10"></div>
    <div class="fixed inset-y-0 right-0 z-10 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
        <div class="flex items-center justify-between">
            <button type="button" class="-m-2.5 rounded-md p-2.5 text-gray-700" data-menu-close>
                <span class="sr-only">Close menu</span>
                <svg class="size-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true" data-slot="icon">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 18 18 6M6 6l12 12" />
                </svg>
            </button>
        </div>
        <div class="mt-6 flow-root">
            <div class="-my-6 divide-y divide-gray-500/10">
                <div class="space-y-2 py-6">
                @zig {
                    inline for (links) |link| {    
                        <a href="{{ link.href }}" class="-mx-3 block rounded-lg px-3 py-2 text-base/7 font-semibold text-gray-900 hover:bg-gray-50">{{ link.title }}</a>
                    }
                }
                @partial layouts/all/select_lang
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const menuButton = document.querySelector('[data-menu-button]');
        const mobileMenu = document.querySelector('[data-mobile-menu]');
        const closeButton = document.querySelector('[data-menu-close]');

        menuButton?.addEventListener('click', () => {
            mobileMenu?.removeAttribute('hidden');
        });

        closeButton?.addEventListener('click', () => {
            mobileMenu?.setAttribute('hidden', 'true');
        });

        // Optional: Close menu when clicking outside it
        document.addEventListener('click', (event) => {
            if (mobileMenu && !mobileMenu.hasAttribute('hidden') && !mobileMenu.contains(event.target) && !menuButton.contains(event.target)) {
                mobileMenu.setAttribute('hidden', 'true');
            }
        });
    });
</script>
