Rails.application.routes.draw do
  resources :routines
  resources :components
  resources :steps
  resources :poses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
