<template>
    <nav>
        <NuxtLink to="/">
            <div class="logo">
                Quizzinator
            </div>
        </NuxtLink>
        <nuxt-link to="/about">About</nuxt-link>

    </nav>
</template>

<style scoped>
nav {
    background-color: white;
    width: 99vw;
    position: fixed;
    display: flex;
    justify-content: space-between;
    padding: 16px 0 16px 0;
    margin-bottom: 24px;
    border-bottom: 1px solid rgb(168, 168, 168);
}

a {
    text-decoration: none;
}

.router-link-active {
    color: green;
}

.router-link {
    color: blueviolet;
}

a .logo {
    color: green;
    text-decoration: none;
    font-size: large;
    font-weight: bold;
}
</style>