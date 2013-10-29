Cprsite::Application.routes.draw do
  resources :privilege_levels

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  resources :course_types, :user_sessions, :courses, :organizations, :privilege_levels
  
  resources :users do
	member do
		get 'privilege_levels'
		patch 'update_user_privilege_levels'
	end
  end
  resources :account, :controller => "users"
    
  get "welcome/handsonly"
  get "welcome/learn"
  get "welcome/aed"
  get "welcome/info"
  get "welcome/index"

  # You can have the root of your site routed with "root"
  root to: 'welcome#index'

 end
