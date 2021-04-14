<template>
  <header class="relative bg-black z-1000 bg-radial-t-gray-to-black" id="header">

    <nav class="container flex flex-wrap items-center justify-between py-4 mx-auto sm:px-0">
      <div class="flex items-center flex-grow w-auto height-30px">
            <div class="flex flex-wrap items-center content-center flex-shrink-0 mr-6 space-x-1 text-white">
          <g-image src="/favicon-96x96.png" class="self-center block object-contain w-6 h-auto" />
          <span class="text-xl font-semibold tracking-tight">{{ $static.metadata.siteName }}</span>
        </div>
        <div class="flex-grow text-sm uppercase">
          <ul class="flex text-gray-300 uppercase list-none justify-left">
            <li
              :key="element.name"
              v-for="(element,index) in $static.metadata.navigation"
              class="hover:text-white"
              v-bind:class="{'mr-4' : index != Object.keys($static.metadata.navigation).length - 1}">
              <a
                :href="element.link"
                v-if="element.external"
                target="_blank"
                rel="noopener noreferrer"
                class="animated-link">{{ element.name }}</a>
              <g-link v-else :to="element.link" class="animated-link">{{element.name}}</g-link>
            </li>
          </ul>
        </div>
        <div class="inline-block text-gray-400">
          <ul class="flex justify-center list-none md:justify-end">
            <li class="mr-0 sm:mr-6">
              <theme-switcher v-on="$listeners" :theme="theme"/>
            </li>
            <li
              :key="element.name"
              v-for="(element,index) in $static.metadata.social"
              class="hidden hover:text-white sm:block"
              v-bind:class="{'mr-6' : index != Object.keys($static.metadata.social).length - 1}">
              <span class="text-sm">
                <a :href="element.link" target="_blank" rel="noopener noreferrer">
                  <font-awesome :icon="['fab', element.icon]" />
                </a>
              </span>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
</template>

<script>

import ThemeSwitcher from '~/components/ThemeSwitcher'

export default {
  props: {
    theme: {
      type: String,
    },
  },
  components : {
    ThemeSwitcher
  }
};
</script>

<static-query>
query {
  metadata {
    siteName
    siteDescription
    navigation : headerNavigation {
      name
      link
      external
    }
    social {
      icon
      link
    }
  }
}
</static-query>