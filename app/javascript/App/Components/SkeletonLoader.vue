<template>
  <div ref="skeleton">
    <slot />
  </div>
</template>

<script>
export default {
  mounted() {
    this.startSkeleton();
  },
  props: {
    width: String,
    height: String,
  },
  methods: {
    startSkeleton() {
      const skeleton = this.$refs.skeleton;
      let brightness = 85;
      let increasing = true;

      setInterval(() => {
        skeleton.style.background = `hsl(0, 0%, ${brightness}%)`;

        if (increasing) {
          brightness++;
        } else {
          brightness--;
        }

        if (brightness >= 85) {
          increasing = false;
        } else if (brightness <= 80) {
          increasing = true;
        }
      }, 100);
    },
  },
};
</script>
