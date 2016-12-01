Rails.application.routes.draw do
    
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }  
    resources :workouts


#having a lot of issues with this one... i did so many variations with mendel and other advisors, bu
#but nothing has really changed 

  resources :users do 
    resources :workouts 
    end
 # Also wokrers
 #users_id/workouts/id

 


  root "workouts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
