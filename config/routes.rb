Rails.application.routes.draw do
  root 'home#index'
  get 'gry' => 'home#gry', as: :gry
  get 'akcesoria' => 'home#akcesoria', as: :akcesoria
  get 'kontakt' => 'home#kontakt', as: :kontakt
end