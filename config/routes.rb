MakeSandwich::Application.routes.draw do  
  
  resources :orders

  root to: 'pages#home'
end
