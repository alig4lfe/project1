Rails.application.routes.draw do
  resources :submissions
  get 'pages/home'

  get 'pages/welcome'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
