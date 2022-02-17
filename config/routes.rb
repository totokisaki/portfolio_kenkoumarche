Rails.application.routes.draw do
  resources :posts
  get 'posts/index'
  resources :restaurants
  get 'restaurants/index'
  resources :kcals
  get 'kcals/index'
  resources :reserves
  get 'reserves/index'
  resources :exams do
   get :search, on: :collection
  end
  get 'exams/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  get 'home/about'
  root 'home#top'
  get 'home/top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
