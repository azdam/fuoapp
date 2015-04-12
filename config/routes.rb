FUOApp::Application.routes.draw do
  resources :adminstrators

  resources :students

  resources :accomodations

  resources :hostels

  root "students#index"
end
