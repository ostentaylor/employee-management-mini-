Rails.application.routes.draw do

  # This will create routes for GET /employees, POST /employees, and DELETE /employees/:id.
  resources :employees, only: [:index, :create, :destroy]


end
