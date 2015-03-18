Rails.application.routes.draw do
  devise_for :admins
  root 'schedules#index'
  resources :users
  resources :materi_kultums
  resources :materi_talaqis
  resources :schedules
end
