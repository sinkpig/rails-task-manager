Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # READ ALL
  get 'tasks', to: 'tasks#index', as: 'index'
  # CREATE
  get 'tasks/new', to: 'tasks#new', as: 'create'
  post 'tasks', to: 'tasks#create'
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
  # READ ONE
  get 'tasks/:id', to: 'tasks#show', as: 'task'
end
