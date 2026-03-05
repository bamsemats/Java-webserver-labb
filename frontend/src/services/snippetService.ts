import api from './api';

const getPublicSnippets = (page = 0, size = 20, search = '', language = '') => {
  let url = `/snippets/public?page=${page}&size=${size}`;
  if (search) url += `&search=${encodeURIComponent(search)}`;
  if (language) url += `&language=${encodeURIComponent(language)}`;
  return api.get(url);
};

const getMySnippets = (page = 0, size = 10, search = '') => {
  let url = `/snippets?page=${page}&size=${size}`;
  if (search) url += `&search=${search}`;
  return api.get(url);
};

const getSnippetById = (id: number) => {
  return api.get(`/snippets/${id}`);
};

const createSnippet = (data: any) => {
  return api.post('/snippets', data);
};

const updateSnippet = (id: number, data: any) => {
  return api.put(`/snippets/${id}`, data);
};

const deleteSnippet = (id: number) => {
  return api.delete(`/snippets/${id}`);
};

const snippetService = {
  getPublicSnippets,
  getMySnippets,
  getSnippetById,
  createSnippet,
  updateSnippet,
  deleteSnippet,
};

export default snippetService;
