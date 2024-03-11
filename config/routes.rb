Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:index, :create, :show, :new, :edit, :update]
  root 'books#index'
end
