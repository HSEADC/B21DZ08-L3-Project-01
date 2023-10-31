Rails.application.routes.draw do
  resources :comments
  resources :fandoms do
    resources :fandom_characters
    resources :comments
  end
  resources :authors do
    resources :fandoms
  end
  resources :fandom_characters
  resources :categories do
    resources :fandoms
  end
  get 'welcome/index'
  get 'welcome/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
