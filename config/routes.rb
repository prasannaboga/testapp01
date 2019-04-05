Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'home#index'

  resources :users do
    resources :meta_fields
  end

  resources :roles do
    member do
      put :update_status
    end
  end

  resource :dynamic_css, controller: :dynamic_css
end
