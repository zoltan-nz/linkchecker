Linkchecker::Application.routes.draw do

  resources :links


  resources :pages

  get "pages/:id/startdownloadlinks" => 'pages#startdownloadlinks', :as => :startdownloadlinks_page

  resources :domains

  get "domains/:id/start/" => 'domains#start', :as => :start_domain

  root :to => "home#index"
end
