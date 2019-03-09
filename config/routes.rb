Rails.application.routes.draw do
  resources :users do
    resources :meta_fields
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'home#index'

  resources :roles do
    member do
      put :update_status
    end
  end
end
