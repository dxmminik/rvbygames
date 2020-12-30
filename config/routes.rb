# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'
  get 'ogloszenia' => 'home#ogloszenia', as: :ogloszenia
  get 'kontakt' => 'home#kontakt', as: :kontakt
  get 'logowanie' => 'devise/sessions#new', as: :logowanie
end
