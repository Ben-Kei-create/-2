Rails.application.routes.draw do
  get '/top'=>'homes#top'
  get 'books/new'=>'books#new'
  post'books'=>'books#create'
  get 'books' => 'books#index'



  get 'books/:id' => 'books#show', as: 'book'



  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html





end
