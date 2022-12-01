Rails.application.routes.draw do
  resources :effects
  get 'welcome/index'
  resources :games do
    resources :players
    resources :monsters
  end
  get 'effects/index'
  get 'games/index'

  post "", to: "welcome#redirect", as: :redirect

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
