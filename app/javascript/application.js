// Entry point for the build script in your package.json
import { createApp } from "vue";
import App from "./App/App.vue";
import { router } from "./App/Router/index"

createApp(App).use(router).mount("#app");
