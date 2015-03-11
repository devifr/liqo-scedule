Rails.application.routes.draw do
  devise_for :admins
  root 'schedules#index'
  resources :users
  resources :materi_kultums
  resources :schedules
end
