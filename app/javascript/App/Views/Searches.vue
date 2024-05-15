<template>
  <div class="h-full flex flex-row flex-wrap mt-4 gap-5">
    <CardDescription
      v-for="search in searches"
      :key="search._id"
      imageWidth="w-[400px]"
      imageHeight="h-[300px]"
      :imageUrl="search.image_url"
      :imageDescription="search.image_description"
    />
  </div>
</template>

<script>
import CardDescription from "../Components/CardDescription.vue";
import api from "../Services/api";

export default {
  name: "Searches",
  created() {
    this.fetchSearches();
  },
  data() {
    return {
      searches: [],
    };
  },
  components: {
    CardDescription,
  },
  methods: {
    async fetchSearches() {
      try {
        const response = await api.get("/searches/index");

        this.searches = response.data;
      } catch (error) {
        console.error("Error:", error);
      }
    },
  },
};
</script>
