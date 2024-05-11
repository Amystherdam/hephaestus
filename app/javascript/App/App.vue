<template>
  <div class="h-screen">
    <Navbar />
    <div class="h-4/5">
      <router-view />
    </div>
    <Footer />
  </div>
</template>
<script>
import Navbar from "Components/Navbar.vue";
import Footer from "Components/Footer.vue";

export default {
  name: "App",
  components: {
    Navbar,
    Footer,
  },
};
</script>
