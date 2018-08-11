SampleApp::Appication.routes.draw do
    devise_for :users, :controllers => {
        :registrations => "registrations"
    }
    resources :users, only: [:show, :index, :destroy]
    resources :microposts, only: [:create, :destroy]
    
    root    'static_pages#home'
    match '/help', to: 'static_pages#help',         via: 'get'
    match '/about', to: 'static_pages#about',       via: 'get'
    match '/contact', to: 'static_pages#contact',   via: 'get'

end