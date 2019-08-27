Rails.application.routes.draw do
  devise_for :users
  resources :users
  resource :rooms

  root 'home#index'
  get 'home/show'
  post 'home/reject'

  get 'users/show'
  post 'users/add_hoby'
  post 'users/delete_hoby'
  post 'users/chat_request'
  get 'users/index'
  get 'users/show'

end
