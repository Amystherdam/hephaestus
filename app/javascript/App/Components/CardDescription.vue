<template>
  <div
    class="w-[600px] rounded-2xl p-6 shadow-2xl mt-6 mb-6 flex flex-col items-center justify-center"
  >
    <img class="w-[600px] mb-6 rounded-sm" :src="imageLink" />
    <p>
      {{ imageDescription }}
    </p>
  </div>
</template>

<script>
export default {
  name: "CardDescription",
  props: {
    imageLink: String,
    imageDescription: String,
  },
};
</script>
