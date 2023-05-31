<template>
    <NavBar />
    <li v-for="post in posts">
        {{ post.title }}
        <span> by {{ post.userId }}</span>
    </li>
</template>

<script setup>
    const {data: posts} = useLazyFetch("https://jsonplaceholder.typicode.com/posts")
</script>
