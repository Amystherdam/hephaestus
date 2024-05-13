<template>
  <div class="flex flex-col items-center justify-center">
    <img src="../Assets/hephaestus_logo.png" alt="hephaestusLogo" />
    <Form @formData="handleForm" />
    <CardDescription
      v-if="processedImage"
      :imageLink="imageLink"
      :imageDescription="imageDescription"
    />
  </div>
</template>

<script>
import Form from "../Components/Form.vue";
import CardDescription from "../Components/CardDescription.vue";

export default {
  name: "Home",
  components: {
    Form,
    CardDescription,
  },
  data() {
    return {
      processedImage: false,
      imageLink: "",
      imageDescription: "",
    };
  },
  methods: {
    handleForm(data) {
      const formData = JSON.parse(data);

      this.processedImage = true;
      this.imageLink = formData.imageLink;
      this.imageDescription = formData.imageDescription;
    },
  },
};
</script>
