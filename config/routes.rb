Rails.application.routes.draw do
  get 'leases/create'
  get 'leases/destroy'
  get 'apartmets/create'
  get 'apartmets/show'
  get 'apartmets/update'
  get 'apartmets/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tenants, only: [:create, :show, :update, :destroy]
  resources :apartments, only: [:create, :show, :update, :destroy]
  resources :leases, only: [:create, :destroy]
end
