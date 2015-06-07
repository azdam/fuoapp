FUOApp::Application.routes.draw do
  resources :administrators
  resources :adminstrators

  resources :students

  resources :accomodations

  resources :hostels

  resources :sessions, only: [:create, :new, :destroy]

  match '/signin', to: 'sessions#new', via: :get
  match '/signout', to: 'sessions#destroy', via: :delete
  
  root "students#index"
end
