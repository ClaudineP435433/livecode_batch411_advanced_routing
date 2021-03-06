Rails.application.routes.draw do
  get 'plants/create'
  get 'garden/index'
  get 'garden/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy]

end
