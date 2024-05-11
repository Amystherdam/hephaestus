<template>
  <div class="h-screen">
    <Navbar />
    <div class="h-[91.5%]">
      <router-view />
    </div>
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
