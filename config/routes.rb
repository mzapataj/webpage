Rails.application.routes.draw do
  get 'uploads/new'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "people#index"
end
