Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # post '/users', to: 'users#create'
  # get  '/users', to: 'users#index'

  resources :users
end
