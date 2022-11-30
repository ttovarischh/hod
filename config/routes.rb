Rails.application.routes.draw do
  get 'welcome/index'
  resources :games do
    resources :players
  end
  get 'games/index'

  post "", to: "welcome#redirect", as: :redirect

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
