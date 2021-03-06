# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  root 'posts#index'
  get 'ogloszenia' => 'home#ogloszenia', as: :ogloszenia
  get 'kontakt' => 'home#kontakt', as: :kontakt
  get 'logowanie' => 'devise/sessions#new', as: :logowanie
end
