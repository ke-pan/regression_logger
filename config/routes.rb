Rails.application.routes.draw do

   root 'test_sets#index'

   resources :test_sets, only: [:index, :show, :new, :create]
   resources :regressions, only: [:show, :new, :create]

   resources :test_items, only: [:new, :create]
   get '/update_regressions', to: 'test_items#update_regressions'

   resources :users, only: [:index, :show, :update, :destroy]
   get  'register', to: 'users#new'
   post 'register', to: 'users#create'

   get  'login',  to: 'sessions#new'
   post 'login',  to: 'sessions#create'
   get  'logout', to: 'sessions#destroy'
end
