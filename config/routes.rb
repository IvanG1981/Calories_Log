Rails.application.routes.draw do
  #get 'calories/new'
  #get 'calories/show'
  #get 'calories/index'
  #get 'calories/edit'
  #get 'calories/create'
  #get 'calories/destroy'
  #resources :calories
  devise_for :users
  resources :calories
  #get 'charts/index'
  get 'charts/calories_logs'
  #get 'charts/filterd_logs'
  #resources :charts
  #namespace :charts do
  #  get "calories_logs"
  #end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'

end
