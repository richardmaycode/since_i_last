Rails.application.routes.draw do
  namespace :events do
    resources :priors
    resources :futures
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :actions
end
