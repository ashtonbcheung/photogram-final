Rails.application.routes.draw do
  get 'follow_requests/create'
  get 'follow_requests/update'
  get 'follow_requests/destroy'
  get 'likes/create'
  get 'likes/destroy'
  get 'comments/create'
  get 'comments/destroy'
  get 'photos/index'
  get 'photos/show'
  get 'photos/new'
  get 'photos/create'
  get 'photos/edit'
  get 'photos/update'
  get 'photos/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
