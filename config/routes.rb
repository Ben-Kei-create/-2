Rails.application.routes.draw do
  get 'books/new'
  get 'top'=>'homes#top'
  post'books'=>'books#create'
  # 右はURLである。右は、booksというディレクトリの中のindexアクション
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch'books/:id' => 'books#update', as: 'update_book'
  
end
