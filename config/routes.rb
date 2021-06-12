Rails.application.routes.draw do
  get 'people/show'
  devise_for :people
  resources :people, only: %i[show]
  resources :watches do
    resources :outcomes, only: %i[index new create], module: :watches
  end
  resources :countdowns

  root to: "pages#home"
end
