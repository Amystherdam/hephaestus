<template>
  <div class="flex flex-col items-center justify-center h-full">
    <img src="../Assets/hephaestus_logo.png" alt="" />

    <form action="" method="get" class="flex flex-col items-center mt-6">
      <div class="relative mt-2 rounded-md">
        <div class="absolute inset-y-0 left-0 flex items-center pl-3">
          <CameraIcon class="w-5" />
        </div>
        <input
          type="text"
          name="imageLinkInput"
          id="imageLinkInput"
          class="w-96 h-9 py-1.5 pl-9 border-2 rounded-2xl border-gray-300 text-gray-900 placeholder:text-gray-400 sm:text-sm"
          placeholder="Image link"
        />
      </div>

      <input
        type="submit"
        value="Describe image"
        class="bg-gray-300 py-2 px-4 mt-3 rounded-md"
      />
    </form>
  </div>
</template>

<script>
import { CameraIcon } from "@heroicons/vue/24/solid";

export default {
  name: "Home",
  components: {
    CameraIcon,
  },
};
</script>
