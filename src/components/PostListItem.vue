<template>
  <div class="flex px-0 pb-8 mb-8 flex-post sm:px-4" v-bind:class="{'no-border': !border}">
    <g-link :to="record.path" class="post-card-image-link">
      <g-image :src="record.image" :alt="record.title" class="post-card-image"></g-image>
    </g-link>
    <div class="post-card-content">
      <g-link :to="record.path">
        <p class="mt-3 text-xs font-medium text-blue-700 uppercase">{{ record.category.title }}</p>
        <h2 class="mt-0 post-card-title">
          {{ record.title }}
        </h2>
        <p class="post-card-excerpt line-clamp-2">{{ record.excerpt }}</p>
      </g-link>
      <div class="w-full pt-4 post-card-meta">
      <div class="avatars">
        <div class="flex items-center">
          <div class="flex items-center justify-between">
            <ul class="flex list-none author-list">
              <li v-for="author in record.author" :key="author.id" class="author-list-item">
                <g-link :to="author.path" v-tooltip="author.name">
                  <g-image
                    :src="author.image"
                    :alt="author.name"
                    class="w-8 h-8 bg-gray-200 border-2 border-white rounded-full"
                  />
                </g-link>
              </li>
            </ul>
          </div>
           <div class="flex flex-col pl-3 ml-3 text-xs leading-none uppercase border-l">
             <p>
               <time :datetime="record.datetime">{{ record.humanTime }}</time>
             </p>
             <p>
               {{ record.timeToRead }} min
             </p>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    record: {},
    border: {
      type: Boolean,
      default: true
    }
  },
};
</script>

<style>
</style>