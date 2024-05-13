<template>
  <form class="flex flex-col items-center mt-6" @submit="handleForm">
    <div class="relative mt-2 rounded-md">
      <div class="absolute inset-y-0 left-0 flex items-center pl-3">
        <CameraIcon class="w-5 fill-gray-300" />
      </div>
      <input
        type="text"
        v-model="imageLink"
        id="imageLink"
        name="imageLink"
        :placeholder="`${errors.length > 0 ? errors[0] : 'Image link'}`"
        :class="
          'w-96 h-9 py-1.5 pl-9 border-2 rounded-2xl ' +
          `
            ${errors.length > 0 ? 'border-red-300' : 'border-gray-300'} 
            ${
              errors.length > 0
                ? 'placeholder:text-red-400'
                : 'placeholder:text-gray-400'
            }
          ` +
          ' text-gray-900 sm:text-sm'
        "
      />
    </div>

    <input
      type="submit"
      value="Describe image"
      class="bg-gray-300 py-2 px-4 mt-3 rounded-md"
    />
  </form>
</template>

<script>
import { CameraIcon } from "@heroicons/vue/24/solid";
import api from "../Services/api";

export default {
  name: "Form",
  components: {
    CameraIcon,
  },
  emits: ["formData"],
  data() {
    return {
      errors: [],
      imageLink: "",
    };
  },
  methods: {
    async handleForm(e) {
      e.preventDefault();

      try {
        if (this.imageLink) {
          const response = await api.post("/describe/index", {
            describe: { image_url: this.imageLink },
          });

          const data = {
            imageLink: response.data.image_url,
            imageDescription: response.data.image_description,
          };

          this.$emit("formData", JSON.stringify(data));

          this.imageLink = "";
          this.errors = [];
        } else {
          this.errors.push("Enter a link");
        }
      } catch (error) {
        console.error("Error:", error);
      }
    },
  },
};
</script>
