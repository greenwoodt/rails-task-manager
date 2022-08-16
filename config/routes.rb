Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # View home page and view all frome the database.
  get "tasks/new", to: "tasks#new", as: :new_task
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task

  # Create a new.
  post "tasks", to: "tasks#create"

  # Update the tasks
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Delete the tasks
  delete "tasks/:id", to: "tasks#destroy"

end
