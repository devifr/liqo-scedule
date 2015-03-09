Rails.application.routes.draw do
  devise_for :admins
  root 'home#index'
  resources :users
  resources :materi_kultums
  resources :schedules
end
