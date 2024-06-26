Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "static_pages#index"
  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
  resources :contacts
  resources :users, only: [:new, :create]

end
