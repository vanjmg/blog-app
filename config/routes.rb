Rails.application.routes.draw do
  resources :dotaheros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  # get '/articles/update' => 'article#update', as 'update_article'
  post '/articles' => 'articles#create', as: 'create_article'
  post '/articles' => 'articles#edit', as: 'edit_article'
end
