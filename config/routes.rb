Notifications::Application.routes.draw do
  root to: "main#index"

  resources :orders
  resources :clients
  resources :messages
end
