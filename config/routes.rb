Rails.application.routes.draw do
  resources :users
  #resources :users ,only: [:index ,:edit]
  #resources :users ,except: [:delete]
  # match '/users' , 'users#index'
  # match '/users/:id' , 'users#show'
  # post  '/users' , 'users#create' , as :give_me_users_create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
