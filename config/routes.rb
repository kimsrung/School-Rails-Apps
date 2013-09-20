SchoolApps::Application.routes.draw do
  
  get "tutors/index"
  root "courses#index"
  resources :courses do
    resources :objectives
  end
  resources :tutors
end
