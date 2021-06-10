Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :watches do
    resources :outcomes, only: %i[index new create], module: :watches
  end
  resources :countdowns
end
