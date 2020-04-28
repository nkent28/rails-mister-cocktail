Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to:'cocktails#index'

  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
   resources :reviews, only: [:destroy]
    resources :cocktails, only: [:destroy]

  resources :cocktails do
    resources :reviews, only: [:new, :create]
  end
end


