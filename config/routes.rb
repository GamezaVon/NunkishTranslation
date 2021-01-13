Rails.application.routes.draw do
  root :to => 'automation#index'
  get 'automation/index'
  post 'automation/executeTest' => 'automation#executeTest'
  resources :navlinks, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
