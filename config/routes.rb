Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Hello pana
  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "pages#home"
  resources :users
end
