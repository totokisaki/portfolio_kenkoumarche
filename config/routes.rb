Rails.application.routes.draw do
  resources :reserves
  get 'reserves/index'
  resources :exams
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
