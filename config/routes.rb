Rails.application.routes.draw do
  root "tops#index"
  resources :tops, only: :index
  resources :shops
  resources :study_tips
  resources :messages
end
