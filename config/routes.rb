Rails.application.routes.draw do
  resources :lessons do
    resources :schedules, only: [:new, :create]
  end

  #get "lessons", to: "lessons#index"
  #get "lessons/new", to: "lessons#new"
  #post "lessons/create", to: "lessons#create"
  #get "lessons/:id", to: "lessons#show"
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Hello pana
  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "pages#home"
  resources :users
end
