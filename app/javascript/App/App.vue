<template>
  <div>
    <Navbar />
    <router-view />
  </div>
</template>
<script>
import Navbar from "Components/Navbar.vue";

export default {
  name: "App",
  components: {
    Navbar,
  },
};
</script>

<style>
* {
  font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
    Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
</style>
