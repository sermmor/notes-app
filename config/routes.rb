Rails.application.routes.draw do
  root 'pages_without_login#home'
  get '/signup', to: 'users#new'
  resources :users
end
