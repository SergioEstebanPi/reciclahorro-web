Rails.application.routes.draw do
  resources :noticia
  resources :comentarios
  resources :publicacions
  resources :sectors
  resources :puntorecoleccions
  resources :productos
  resources :tipoproductos
  resources :oferta
  resources :residuos
  resources :tiporesiduos
  resources :almacens
  resources :tipoalmacens
  resources :zonas
  resources :entregas
  resources :recolectors
  resources :solicituds
  resources :solicitud
  resources :vecinos
  #devise_for :usuarios
  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'vecinos' => 'vecinos#index'
  resource :vecinos
end
