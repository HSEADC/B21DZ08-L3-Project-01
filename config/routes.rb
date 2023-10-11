Rails.application.routes.draw do
  resources :authors
  resources :fandom_characters
  resources :categories
  resources :fandoms
  get 'welcome/index'
  get 'welcome/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
