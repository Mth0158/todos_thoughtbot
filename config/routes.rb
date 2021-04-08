Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'todos#index'
  resources :todos, onlu: %i[index new create]
  resource :session, only: %i[new create]
end
