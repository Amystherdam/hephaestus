import { createWebHistory, createRouter } from 'vue-router'
import Home from "../Views/Home.vue";
import Searches from "../Views/Searches.vue";

const routes = [
  {path: '/', component: Home},
  {path: '/searches', component: Searches}
]

export const router = createRouter({
  history: createWebHistory(),
  routes
})
