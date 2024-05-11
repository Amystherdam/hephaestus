<template>
  <div class="flex flex-col items-center justify-center">
    <img src="../Assets/hephaestus_logo.png" alt="hephaestusLogo" />
    <Form @formData="handleForm" />
    <CardDescription v-if="dataToAnalysisPresent" :imageLink="imageLink" />
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
      dataToAnalysisPresent: false,
      imageLink: "",
    };
  },
  methods: {
    handleForm(data) {
      const formData = JSON.parse(data);

      this.dataToAnalysisPresent = true;
      this.imageLink = formData.imageLink;
    },
  },
};
</script>
