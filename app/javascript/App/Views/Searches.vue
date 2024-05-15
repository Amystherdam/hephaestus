<template>
  <div class="h-full flex flex-row flex-wrap items-center mt-4 gap-5">
    <CardDescription
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      imageLink="https://i.redd.it/xg9q5lxplln11.png"
      imageDescription="imageDescription"
    />
    <CardDescription
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      imageLink="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/1200px-Flag_of_Brazil.svg.png"
      imageDescription="imageDescription"
    />

    <CardDescription
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      imageLink="https://s1.static.brasilescola.uol.com.br/be/2021/11/1-mapa-brasil.jpg"
      imageDescription="imageDescription"
    />
    <CardDescription
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      imageLink="https://www.saibamais.net/wp-content/uploads/2014/10/artes-marciais.jpg"
      imageDescription="imageDescription"
    />
    <CardDescription
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      imageLink="https://i.redd.it/xg9q5lxplln11.png"
      imageDescription="imageDescription"
    />
  </div>
</template>

<script>
import CardDescription from "../Components/CardDescription.vue";
export default {
  components: {
    CardDescription,
  },
};
</script>
