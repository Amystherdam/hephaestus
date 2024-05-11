<template>
  <nav class="h-20 bg-gray-200 flex items-center">
    <img src="../Assets/hephaestus_icon.png" class="w-20" />
    <div class="flex gap-3 mr-6 justify-end w-full">
      <router-link to="/">Home</router-link>
      <router-link to="/searches">Searches</router-link>
    </div>
  </nav>
</template>

<script>
export default {
  name: "Navbar",
};
</script>
