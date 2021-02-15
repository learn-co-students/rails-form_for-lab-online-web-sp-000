Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :students, only: [:show, :new, :create, :edit]
  patch 'students/:id', to: 'students#update'
  
  resources :'school_classes', only: [:show, :new, :create, :edit], :path => '/school-classes'
  patch 'school-classes/:id', to: 'school_classes#update'
  
end
