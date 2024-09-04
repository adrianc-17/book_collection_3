Rails.application.routes.draw do

  root 'books#index'

  get 'books/index'
  get 'books/new'
  get 'books/edit'
  get 'books/delete'
  get 'books/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
