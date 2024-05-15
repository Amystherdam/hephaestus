<template>
  <div
    :class="
      `${imageWidth}` +
      ' rounded-2xl p-6 shadow-2xl mt-6 mb-6 flex flex-col items-center justify-center'
    "
  >
    <img
      :class="'mb-6 rounded-sm ' + `${imageWidth} ${imageHeight}`"
      :src="imageLink"
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
    imageLink: String,
    imageDescription: String,
  },
};
</script>
