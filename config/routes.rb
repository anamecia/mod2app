Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  resources :users
  resources :users_sessions, except:[:destroy]

  get '/userlogin', to: 'users_sessions#new', as: 'userlogin'

  get '/userlogout', to: 'users_sessions#destroy', as:'userlogout'
######
  resources :hosts
  resources :hosts_sessions, except:[:destroy]

  get '/hostlogin', to: 'hosts_sessions#new', as: 'hostlogin'

  get '/hostlogout', to: 'hosts_sessions#destroy', as:'hostlogout'
#####

  resources :bookings, except:[:new]

  resources :events

  get 'events/:id/booking', to:'bookings#new', as:'book_event'
  ######
  resources :admins, only:[:new,:create]
  resources :admins_sessions, except:[:destroy]

  get '/adminlogin', to: 'admins_sessions#new', as: 'adminlogin'
  get '/adminlogout', to: 'admins_sessions#destroy', as:'adminlogout'
  get '/adminhomepage', to: 'admins#homepage', as:'adminhomepage'

  #Reports:
  
end
