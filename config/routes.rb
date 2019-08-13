Rails.application.routes.draw do
  get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'
  get '/new_school_class', to: 'school_classes#new'
  post '/school_classes', to: 'school_classes#create'















  get '/new_student', to: 'students#new'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch '/students/:id', to: 'students#update'
  # resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
