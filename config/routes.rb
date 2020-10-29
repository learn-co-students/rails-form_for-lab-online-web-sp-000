Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:show, :new, :create, :edit, :update]
  
  # shortcut below - includes index and delete controller actions
  resources :school_classes

end
