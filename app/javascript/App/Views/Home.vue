<template>
  <div class="flex flex-col items-center justify-center">
    <img src="../Assets/hephaestus_logo.png" alt="hephaestusLogo" />
    <Form @formData="handleForm" @submitForm="handleSubmitClick" />
    <CardDescription
      v-if="processedImage"
      :imageLink="imageLink"
      :imageDescription="imageDescription"
    />
    <div
      v-if="!processedImage && submitWithoutErrors"
      class="w-[600px] rounded-2xl p-6 shadow-2xl mt-6 mb-6 flex flex-col items-center justify-center"
    >
      <SkeletonLoader
        class="w-[550px] h-[300px] mb-4 rounded-sm flex justify-center items-center text-gray-400"
      >
        <PhotoIcon class="w-10 fill-gray-400" />
      </SkeletonLoader>
      <SkeletonLoader class="h-2 mb-2.5 w-[550px]" />
      <SkeletonLoader class="h-2 mb-2.5 w-[550px]" />
      <SkeletonLoader class="h-2 mb-2.5 w-[550px]" />
      <SkeletonLoader class="h-2 w-[550px]" />
    </div>
  </div>
</template>

<script>
import { PhotoIcon } from "@heroicons/vue/24/solid";
import Form from "../Components/Form.vue";
import CardDescription from "../Components/CardDescription.vue";
import SkeletonLoader from "../Components/SkeletonLoader.vue";

export default {
  name: "Home",
  components: {
    Form,
    CardDescription,
    SkeletonLoader,
    PhotoIcon,
  },
  data() {
    return {
      submitWithoutErrors: false,
      processedImage: false,
      imageLink: "",
      imageDescription: "",
    };
  },
  methods: {
    handleSubmitClick(data) {
      const formData = JSON.parse(data);

      if (formData.withErrors) {
        this.submitWithoutErrors = false;
        this.processedImage = false;
      } else {
        this.submitWithoutErrors = true;
      }
    },

    handleForm(data) {
      const formData = JSON.parse(data);

      this.processedImage = true;
      this.imageLink = formData.imageLink;
      this.imageDescription = formData.imageDescription;
    },
  },
};
</script>
