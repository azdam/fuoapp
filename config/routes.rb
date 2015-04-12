FUOApp::Application.routes.draw do
  resources :hostels

  # get 'student/index'

  # get 'student/show'

  root "students#index"

  resources :students, only: [:index]
end
