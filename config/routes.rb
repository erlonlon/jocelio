Jocelio::Application.routes.draw do

  scope '/admin' do
    devise_for :users,
               :controllers => {:sessions => "admin/sessions",
                                :passwords => "admin/passwords"}

  end

  root :to => 'home#index'

  namespace :admin do
    root :to => "pages#index"
    resources :posts
    resources :galleries
    resources :users, :except => [:show] # só não cria a rota show
    resources :contacts
  
  end 
  
  resources :galleries, :only => [:index]
  resources :propostas, :only => [:index]
  resources :agendas, :only => [:index]  

  resources :contacts
  resources :posts 
  resources :home 
 

end
