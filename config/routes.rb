Rails.application.routes.draw do
  devise_for :users
  get 'uploads/new'

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "people#index"
end
