require 'sidekiq/web'

Rails.application.routes.draw do
  get 'event/index'
  get 'event/create'
  get 'event/destroy'
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  resources :events
  
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
