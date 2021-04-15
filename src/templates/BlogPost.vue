<template>
  <Layout :hideHeader="true" :disableScroll="true">

    <div class="container pt-24 mx-auto overflow-x-hidden sm:pxi-0">
      <div class="pt-8 mx-4 lg:mx-32 md:mx-16 sm:mx-8">
        <section class="container px-0 mx-auto mb-4 border-b post-header">
          <span class="text-sm font-medium tracking-wide text-blue-500 uppercase">
            <g-link :to="$page.blog.category.path" class="hover:underline">
              {{ $page.blog.category.title }}
            </g-link>
          </span>
          <h1 class="mt-0 text-5xl font-medium leading-none">
            {{ $page.blog.title }}
          </h1>
          <div class="pt-4 pb-10 font-serif text-2xl text-gray-500" v-html="$page.blog.excerpt"></div>
        </section>
        <section class="mx-0 mb-10 post-author-list">
          <div class="flex items-center">
            <div class="flex items-center justify-between">
              <ul class="flex list-none author-list">
                <li v-for="author in $page.blog.author" :key="author.id" class="author-list-item">
                  <g-link :to="author.path" v-tooltip="author.name">
                    <g-image :src="author.image" :alt="author.name" class="w-8 h-8 bg-gray-200 border-2 border-white rounded-full sm:h-10 sm:w-10" />
                  </g-link>
                </li>
              </ul>
            </div>
            <div class="flex flex-col pl-3 text-xs leading-none uppercase">
              <p>
                <span v-for="(author, index) in $page.blog.author" :key="author.id">
                  <g-link :to="author.path" v-tooltip="author.name" class="hover:underline">
                    {{ author.name }}
                  </g-link>
                  <span v-if="index < $page.blog.author.length - 1">,</span>
                </span>
              </p>
            </div>
          </div>
        </section>
      </div>

      <section class="w-full mx-auto post-image">
        <g-image :src="$page.blog.image"></g-image>
      </section>

      <div class="px-4 lg:mx-32 md:mx-16 sm:px-0">

        <section id="blog-post-content" class="container relative mx-auto text-gray-700">
          <article class="py-12 text-xl prose" v-html="$page.blog.content"></article>
        </section>

        <section class="container relative py-10 mx-auto post-tags">
          <g-link v-for="tag in $page.blog.tags" :key="tag.id" :to="tag.path"
            class="px-4 py-2 mr-2 text-xs text-gray-700 bg-transparent border border-gray-600 rounded-full hover:text-blue-700 hover:border-blue-500">
            {{ tag.title }}
          </g-link>
        </section>

      </div>

    </div>

    <section class="pt-10 text-gray-200 bg-black border-b post-related border-b-gray-900">
      <div class="container mx-auto">
        <div class="flex flex-wrap pt-8 pb-8 mx-4 sm:-mx-4">
          <PostListItem v-if="$page.previous" :record="$page.previous" :border="false"></PostListItem>
          <PostListItem v-if="$page.next" :record="$page.next" :border="false"></PostListItem>
        </div>
      </div>
    </section>

  </Layout>
</template>

<page-query>
  query($id: ID!, $previousElement: ID!, $nextElement: ID!) {
    blog(id: $id) {
      title
      slug
      path
      image(width:1600, height:800)
      image_caption
      excerpt
      content
      humanTime : created(format:"DD MMMM YYYY")
      datetime : created(format:"ddd MMM DD YYYY hh:mm:ss zZ")
      timeToRead
      tags {
        id
        title
        path
      }
      category {
        id
        title
        path
        belongsTo(limit:4) {
          totalCount
          edges {
            node {
              ... on Blog {
                title
                path
              }
            }
          }
        }
      }
      author {
        id
        name
        image
        path
      }
      tags {
        id
        title
        path
      }
    }

    previous: blog(id: $previousElement) {
      title
      slug
      excerpt
      image(width:800)
      path
      timeToRead
      category {
        id
        title
      }
      author {
        id
        name
        image(width:64, height:64, fit:inside)
        path
      }
    }

    next: blog(id: $nextElement) {
      title
      slug
      excerpt
      image(width:800)
      path
      timeToRead
      category {
        id
        title
      }
      author {
        id
        name
        image(width:64, height:64, fit:inside)
        path
      }
    }
  }
</page-query>

<script>
import PostListItem from "~/components/PostListItem.vue";

export default {
  components: {
    PostListItem,
  },
  metaInfo() {
    return {
      title: this.$page.blog.title,
    };
  },
};
</script>
