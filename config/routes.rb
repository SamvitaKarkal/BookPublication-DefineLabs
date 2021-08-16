Rails.application.routes.draw do
  resources :homes
  resources :book_authors
  resources :books
  resources :authors

  get '/authors/:id', :to => 'author#show'

  root 'homes#index'
end
