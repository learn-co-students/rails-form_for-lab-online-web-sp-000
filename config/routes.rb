Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students [:new, :show, :create, :update]
     resources :schoolclasses [:new, :show, :create, :update]
end
