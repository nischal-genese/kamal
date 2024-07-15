import axios from 'axios';

const api = axios.create({
  baseURL: 'https://kamalapi.valmikiai.com',
});

export default api;
