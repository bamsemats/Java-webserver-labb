import api from './api';

const signup = (username: string, email: string, password: any) => {
  return api.post('/auth/signup', {
    username,
    email,
    password,
  });
};

const login = (username: string, password: any) => {
  return api.post('/auth/signin', {
    username,
    password,
  }).then((response) => {
    if (response.data.accessToken) {
      localStorage.setItem('user', JSON.stringify(response.data));
    }
    return response.data;
  });
};

const logout = () => {
  localStorage.removeItem('user');
};

const getCurrentUser = () => {
  return JSON.parse(localStorage.getItem('user') || 'null');
};

const changePassword = (oldPassword: string, newPassword: string) => {
  return api.post('/auth/change-password', {
    oldPassword,
    newPassword,
  });
};

const authService = {
  signup,
  login,
  logout,
  getCurrentUser,
  changePassword,
};

export default authService;
