MakeSandwich::Application.routes.draw do  
  
  get "orders/new"

  get "orders/show"

  root to: 'pages#home'
end
