import axios from "axios";

const csrfToken = document
      .querySelector("meta[name=csrf-token]")
      .getAttribute("content");
  
axios.defaults.headers.common["X-CSRF-Token"] = csrfToken;
axios.defaults.headers.common["Content-Type"] = "application/json";
axios.defaults.headers["Content-Type"] = "application/json";
axios.defaults.headers["Accept"] = "application/json";

export const api = axios;
export default axios;
