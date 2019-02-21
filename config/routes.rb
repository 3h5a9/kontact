Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'

  resources :posts

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
