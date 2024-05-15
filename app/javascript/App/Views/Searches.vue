<template>
  <div class="h-full flex flex-row flex-wrap items-center mt-4 gap-5">
    <CardDescription
      v-for="search in searches"
      :key="search.id"
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      :imageLink="search.imageLink"
      :imageDescription="search.imageDescription"
    />
  </div>
</template>

<script>
import CardDescription from "../Components/CardDescription.vue";

export default {
  name: "Searches",
  data() {
    return {
      searches: [
        {
          id: 1,
          imageLink: "https://i.redd.it/xg9q5lxplln11.png",
          imageDescription: "imageDescription",
        },
        {
          id: 2,
          imageLink: "https://i.redd.it/xg9q5lxplln11.png",
          imageDescription: "imageDescription",
        },
        {
          id: 3,
          imageLink: "https://i.redd.it/xg9q5lxplln11.png",
          imageDescription: "imageDescription",
        },
        {
          id: 4,
          imageLink:
            "https://www.saibamais.net/wp-content/uploads/2014/10/artes-marciais.jpg",
          imageDescription: "batatinha",
        },
        {
          id: 5,
          imageLink: "https://i.redd.it/xg9q5lxplln11.png",
          imageDescription: "imageDescription",
        },
      ],
    };
  },
  components: {
    CardDescription,
  },
};
</script>
