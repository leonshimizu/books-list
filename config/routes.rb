Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/books" => "books#index"
  post "/books" => "books#create"
  get "/books/:id" => "books#show"
  patch "/books/:id" => "books#update"
  delete "/books/:id" => "books#destroy"
end
