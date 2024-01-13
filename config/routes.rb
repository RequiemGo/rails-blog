Rails.application.routes.draw do
  devise_for :users
  resources :labels
  resources :posts
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get 'change_language/:language', to: 'application#change_language', as: :change_language

end
