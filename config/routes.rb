Jocelio::Application.routes.draw do
  root :to => 'home#index'
  
 
  
  resources :galleries
  resources :propostas
  
  
match 'gallery/:id' => 'galllery#show'
  resources :contacts

  resources :posts

 
  resources :home
  resources :events
 
  
 
 match ':controller(/:action(/:id))(.:format)'
  #match 'products/:id' => 'catalog#view'
end
