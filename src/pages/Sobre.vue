<template>
  <Layout :hideHeader="true" :disableScroll="true">


<!-- This example requires Tailwind CSS v2.0+ -->
<div class="relative overflow-hidden bg-gray-50">
  <div class="hidden sm:block sm:absolute sm:inset-y-0 sm:h-full sm:w-full" aria-hidden="true">
    <div class="relative h-full mx-auto max-w-7xl">
      <svg class="absolute transform right-full translate-y-1/4 translate-x-1/4 lg:translate-x-1/2" width="404" height="784" fill="none" viewBox="0 0 404 784">
        <defs>
          <pattern id="f210dbf6-a58d-4871-961e-36d5016a0f49" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
            <rect x="0" y="0" width="4" height="4" class="text-gray-200" fill="currentColor" />
          </pattern>
        </defs>
        <rect width="404" height="784" fill="url(#f210dbf6-a58d-4871-961e-36d5016a0f49)" />
      </svg>
      <svg class="absolute transform left-full -translate-y-3/4 -translate-x-1/4 md:-translate-y-1/2 lg:-translate-x-1/2" width="404" height="784" fill="none" viewBox="0 0 404 784">
        <defs>
          <pattern id="5d0dd344-b041-4d26-bec4-8d33ea57ec9b" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
            <rect x="0" y="0" width="4" height="4" class="text-gray-200" fill="currentColor" />
          </pattern>
        </defs>
        <rect width="404" height="784" fill="url(#5d0dd344-b041-4d26-bec4-8d33ea57ec9b)" />
      </svg>
    </div>
  </div>

  <div class="relative pt-6 pb-16 sm:pb-24">
    <div class="px-4 mx-auto max-w-7xl sm:px-6">
      <nav class="relative flex items-center justify-between sm:h-10 md:justify-center" aria-label="Global">
        <div class="flex items-center flex-1 md:absolute md:inset-y-0 md:left-0">
          <div class="flex items-center justify-between w-full md:w-auto">
            <a href="#">
              <span class="sr-only">Workflow</span>
              <img class="w-auto h-8 sm:h-10" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
            </a>
            <div class="flex items-center -mr-2 md:hidden">
              <button type="button" class="inline-flex items-center justify-center p-2 text-gray-400 rounded-md bg-gray-50 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <!-- Heroicon name: outline/menu -->
                <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                </svg>
              </button>
            </div>
          </div>
        </div>
        <div class="hidden md:flex md:space-x-10">
          <a href="#" class="font-medium text-gray-500 hover:text-gray-900">Product</a>

          <a href="#" class="font-medium text-gray-500 hover:text-gray-900">Features</a>

          <a href="#" class="font-medium text-gray-500 hover:text-gray-900">Marketplace</a>

          <a href="#" class="font-medium text-gray-500 hover:text-gray-900">Company</a>
        </div>
        <div class="hidden md:absolute md:flex md:items-center md:justify-end md:inset-y-0 md:right-0">
          <span class="inline-flex rounded-md shadow">
            <a href="#" class="inline-flex items-center px-4 py-2 text-base font-medium text-indigo-600 bg-white border border-transparent rounded-md hover:bg-gray-50">
              Log in
            </a>
          </span>
        </div>
      </nav>
    </div>

    <!--
      Mobile menu, show/hide based on menu open state.

      Entering: "duration-150 ease-out"
        From: "opacity-0 scale-95"
        To: "opacity-100 scale-100"
      Leaving: "duration-100 ease-in"
        From: "opacity-100 scale-100"
        To: "opacity-0 scale-95"
    -->
    <div class="absolute inset-x-0 top-0 p-2 transition origin-top-right transform md:hidden">
      <div class="overflow-hidden bg-white rounded-lg shadow-md ring-1 ring-black ring-opacity-5">
        <div class="flex items-center justify-between px-5 pt-4">
          <div>
            <img class="w-auto h-8" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="">
          </div>
          <div class="-mr-2">
            <button type="button" class="inline-flex items-center justify-center p-2 text-gray-400 bg-white rounded-md hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
              <span class="sr-only">Close menu</span>
              <!-- Heroicon name: outline/x -->
              <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
        </div>
        <div class="px-2 pt-2 pb-3">
          <a href="#" class="block px-3 py-2 text-base font-medium text-gray-700 rounded-md hover:text-gray-900 hover:bg-gray-50">Product</a>

          <a href="#" class="block px-3 py-2 text-base font-medium text-gray-700 rounded-md hover:text-gray-900 hover:bg-gray-50">Features</a>

          <a href="#" class="block px-3 py-2 text-base font-medium text-gray-700 rounded-md hover:text-gray-900 hover:bg-gray-50">Marketplace</a>

          <a href="#" class="block px-3 py-2 text-base font-medium text-gray-700 rounded-md hover:text-gray-900 hover:bg-gray-50">Company</a>
        </div>
        <a href="#" class="block w-full px-5 py-3 font-medium text-center text-indigo-600 bg-gray-50 hover:bg-gray-100">
          Log in
        </a>
      </div>
    </div>

    <main class="px-4 mx-auto mt-16 max-w-7xl sm:mt-24">
      <div class="text-center">
        <h1 class="text-4xl font-extrabold tracking-tight text-gray-900 sm:text-5xl md:text-6xl">
          <span class="block xl:inline">Data to enrich your</span>
          <span class="block text-indigo-600 xl:inline">online business</span>
        </h1>
        <p class="max-w-md mx-auto mt-3 text-base text-gray-500 sm:text-lg md:mt-5 md:text-xl md:max-w-3xl">
          Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo. Elit sunt amet fugiat veniam occaecat fugiat aliqua.
        </p>
        <div class="max-w-md mx-auto mt-5 sm:flex sm:justify-center md:mt-8">
          <div class="rounded-md shadow">
            <a href="#" class="flex items-center justify-center w-full px-8 py-3 text-base font-medium text-white bg-indigo-600 border border-transparent rounded-md hover:bg-indigo-700 md:py-4 md:text-lg md:px-10">
              Get started
            </a>
          </div>
          <div class="mt-3 rounded-md shadow sm:mt-0 sm:ml-3">
            <a href="#" class="flex items-center justify-center w-full px-8 py-3 text-base font-medium text-indigo-600 bg-white border border-transparent rounded-md hover:bg-gray-50 md:py-4 md:text-lg md:px-10">
              Live demo
            </a>
          </div>
        </div>
      </div>
    </main>
  </div>
</div>


<!-- This example requires Tailwind CSS v2.0+ -->
<div class="py-12 bg-white">
  <div class="px-4 mx-auto max-w-7xl sm:px-6 lg:px-8">
    <div class="lg:text-center">
      <h2 class="text-base font-semibold tracking-wide text-indigo-600 uppercase">Transactions</h2>
      <p class="mt-2 text-3xl font-extrabold leading-8 tracking-tight text-gray-900 sm:text-4xl">
        A better way to send money
      </p>
      <p class="max-w-2xl mt-4 text-xl text-gray-500 lg:mx-auto">
        Lorem ipsum dolor sit amet consect adipisicing elit. Possimus magnam voluptatum cupiditate veritatis in accusamus quisquam.
      </p>
    </div>

    <div class="mt-10">
      <dl class="space-y-10 md:space-y-0 md:grid md:grid-cols-2 md:gap-x-8 md:gap-y-10">
        <div class="relative">
          <dt>
            <div class="absolute flex items-center justify-center w-12 h-12 text-white bg-indigo-500 rounded-md">
              <!-- Heroicon name: outline/globe-alt -->
              <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9" />
              </svg>
            </div>
            <p class="ml-16 text-lg font-medium leading-6 text-gray-900">Competitive exchange rates</p>
          </dt>
          <dd class="mt-2 ml-16 text-base text-gray-500">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.
          </dd>
        </div>

        <div class="relative">
          <dt>
            <div class="absolute flex items-center justify-center w-12 h-12 text-white bg-indigo-500 rounded-md">
              <!-- Heroicon name: outline/scale -->
              <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3" />
              </svg>
            </div>
            <p class="ml-16 text-lg font-medium leading-6 text-gray-900">No hidden fees</p>
          </dt>
          <dd class="mt-2 ml-16 text-base text-gray-500">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.
          </dd>
        </div>

        <div class="relative">
          <dt>
            <div class="absolute flex items-center justify-center w-12 h-12 text-white bg-indigo-500 rounded-md">
              <!-- Heroicon name: outline/lightning-bolt -->
              <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
              </svg>
            </div>
            <p class="ml-16 text-lg font-medium leading-6 text-gray-900">Transfers are instant</p>
          </dt>
          <dd class="mt-2 ml-16 text-base text-gray-500">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.
          </dd>
        </div>

        <div class="relative">
          <dt>
            <div class="absolute flex items-center justify-center w-12 h-12 text-white bg-indigo-500 rounded-md">
              <!-- Heroicon name: outline/annotation -->
              <svg class="w-6 h-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />
              </svg>
            </div>
            <p class="ml-16 text-lg font-medium leading-6 text-gray-900">Mobile notifications</p>
          </dt>
          <dd class="mt-2 ml-16 text-base text-gray-500">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.
          </dd>
        </div>
      </dl>
    </div>
  </div>
</div>

<!-- This example requires Tailwind CSS v2.0+ -->
<div class="bg-indigo-200 bg-opacity-25">
  <div class="px-4 py-16 mx-auto max-w-7xl sm:py-24 sm:px-6 lg:px-8">
    <div class="lg:grid lg:grid-cols-2 lg:gap-8">
      <h2 class="max-w-md mx-auto text-3xl font-extrabold text-center text-indigo-900 lg:max-w-xl lg:text-left">
        The world's most innovative companies use Workflow
      </h2>
      <div class="self-center flow-root mt-8 lg:mt-0">
        <div class="flex flex-wrap justify-between -mt-4 -ml-8 lg:-ml-4">
          <div class="flex justify-center flex-grow flex-shrink-0 mt-4 ml-8 lg:flex-grow-0 lg:ml-4">
            <img class="h-12" src="https://tailwindui.com/img/logos/workcation-logo-indigo-900.svg" alt="Workcation">
          </div>
          <div class="flex justify-center flex-grow flex-shrink-0 mt-4 ml-8 lg:flex-grow-0 lg:ml-4">
            <img class="h-12" src="https://tailwindui.com/img/logos/tuple-logo-indigo-900.svg" alt="Tuple">
          </div>
          <div class="flex justify-center flex-grow flex-shrink-0 mt-4 ml-8 lg:flex-grow-0 lg:ml-4">
            <img class="h-12" src="https://tailwindui.com/img/logos/level-logo-indigo-900.svg" alt="Level">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


  </Layout>
</template>

<script>
export default {
  metaInfo: {
    title: "About us"
  }
};
</script>
