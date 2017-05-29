Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decks do
    resources :rounds
  end
  resources :users

  resources :cards do
    resources :guesses
  end

  root "decks#index"


end
