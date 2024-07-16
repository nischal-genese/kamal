import axios from 'axios';

const api = axios.create({
  // Please enter the base URL of your backend
  baseURL: 'https://kamalapi.valmikiai.com',
});

export default api;
