Rails.application.routes.draw do
  get 'home', to: 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  root 'static_pages#home'
  get 'yo', to: 'application#yo'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
