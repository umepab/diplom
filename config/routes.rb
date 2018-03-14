Rails.application.routes.draw do

  get 'lessons/calendar'

  root 'lessons#index'
  resources :lessons
  resources :groups

end
