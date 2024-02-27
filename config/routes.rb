Rails.application.routes.draw do
  resources :employees
  get '/employees/search', to: 'employees#search'
end
