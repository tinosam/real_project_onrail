Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home',to: 'static_pages#home'
  
    get '/contact', to: 'static_pages#contact'
  
    get '/about', to: 'static_pages#about'  
    
    get '/about_us', to: 'static_pages#about_us', as: "us" 
    get '/about_me', to: 'static_pages#about_me', as: "me"  

    get '/new_user', to: 'static_pages#new_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
