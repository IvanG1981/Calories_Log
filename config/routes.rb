Rails.application.routes.draw do
  #get 'calories/new'
  #get 'calories/create'
  #get 'calories/show'
  #get 'calories/index'
  #get 'calories/edit'
  #get 'calories/create'
  #get 'calories/destroy'
  resources :calories
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'

end
