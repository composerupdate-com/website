<template>
  <Layout>
    <div class="container mx-auto overflow-x-hidden sm:pxi-0">
      <div class="flex flex-wrap pt-16 pb-16 mx-4 with-large sm:-mx-4">
        <PostListItem v-for="edge in $page.entries.edges" :key="edge.node.id" :record="edge.node" />
      </div>
    </div>
  </Layout>
</template>

<page-query>

query($page:Int) {

  entries: allBlog(perPage: 9, page: $page) @paginate {
    totalCount
    pageInfo {
      totalPages
      currentPage
    }
    edges {
      node {
        title
        slug
        excerpt
        image(width:800)
        path
        timeToRead
        humanTime : created(format:"DD MMM YYYY")
        datetime : created
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
  }
}

</page-query>

<script>

import PostListItem from '~/components/PostListItem.vue';

export default {
  metaInfo: {
    title: "Bem Vindo"
  },
  components: {
    PostListItem
  }
};
</script>
