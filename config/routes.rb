Rails.application.routes.draw do
  resources :events do
    post 'attend', on: :member
  end
  resources :users

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "events#index"
end
