<template>
  <div
    :class="
      `${imageWidth}` + ' rounded-2xl p-6 shadow-2xl mt-6 mb-6 flex flex-col'
    "
  >
    <img
      :class="'mb-6 rounded-sm ' + `${imageWidth} ${imageHeight}`"
      :src="imageUrl"
    />
    <p>
      {{ imageDescription }}
    </p>
  </div>
</template>

<script>
export default {
  name: "CardDescription",
  props: {
    imageWidth: String,
    imageHeight: String,
    imageUrl: String,
    imageDescription: String,
  },
};
</script>
