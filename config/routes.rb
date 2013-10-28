Cprsite::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  resources :course_types, :users, :user_sessions, :courses, :organizations
  
  resources :account, :controller => "users"
    
  get "welcome/handsonly"
  get "welcome/learn"
  get "welcome/aed"
  get "welcome/info"
  get "welcome/index"

  # You can have the root of your site routed with "root"
  root to: 'welcome#index'

 end
