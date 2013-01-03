Linkchecker::Application.routes.draw do

  resources :links


  resources :pages


  resources :domains

  get "domains/:id/start/" => 'domains#start', :as => :start_domain

  root :to => "home#index"
end
