Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/students/:id/edit', to: 'students#edit', as: 'edit_db_student'
  resources :students, :school_classes
end
