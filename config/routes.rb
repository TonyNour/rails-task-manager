Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Display all tasks
  get "/tasks", to: "tasks#index"

  # Create a new task
  get "/tasks/new", to: "tasks#new", as: :new

  # Post a new task
  post "/tasks", to: "tasks#create"

  # Edit specific task
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  # Update specific task
  patch "/tasks/:id", to: "tasks#update"

  # Display specific task
  get "/tasks/:id", to: "tasks#show", as: :task

end
