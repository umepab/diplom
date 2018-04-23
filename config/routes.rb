Rails.application.routes.draw do

  devise_for :users
  get 'lessons/calendar'

  root 'lessons#index'
  resources :lessons
  resources :groups
  resources :specialities
  resources :faculties
  resources :schedules




end
