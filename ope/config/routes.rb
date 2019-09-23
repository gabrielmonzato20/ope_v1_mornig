Rails.application.routes.draw do
  resources :fornecedors
  resources :pedido_prdoutos
  resources :pedidos
  resources :clientes
  resources :produtos
  resources :atendentes
  root 'page#index'
  get 'page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
