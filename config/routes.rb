Rails.application.routes.draw do
  root 'houses#new'
  resources :houses
end
