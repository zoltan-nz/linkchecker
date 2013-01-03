Linkchecker::Application.routes.draw do

  resources :links


  resources :pages


  resources :domains


  resources :domain
  get "domain/:id/start/"

  root :to => "home#index"
end
