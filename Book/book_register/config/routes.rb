Rails.application.routes.draw do
  resources :books
  get  'books/index'
  root to: "books#index"
end
