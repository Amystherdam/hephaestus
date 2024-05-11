<template>
  <div class="flex flex-col items-center justify-center h-full">
    <img src="../Assets/hephaestus_logo.png" alt="hephaestusLogo" />
    <Form />
    <CardDescription />
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
};
</script>
