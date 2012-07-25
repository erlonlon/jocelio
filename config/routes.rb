Jocelio::Application.routes.draw do
root :to => 'home#index'
 #devise_for :users

 

  devise_for :users, :path_names => {:sign_in => 'entrar', :sign_out => 'sair', :sign_up => 'cadastrar'}

  resources :galleries

  resources :contacts

  resources :posts

 
  resources :home
  resources :events
 
  
 
 #match ':controller(/:action(/:id))(.:format)'
  #match 'products/:id' => 'catalog#view'
end
