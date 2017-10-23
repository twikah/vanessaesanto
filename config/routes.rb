Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'

  get '/sitemap', to: 'main#sitemap'

  get '/about', to: 'main#about'
  get '/contact', to: 'main#contact', as: 'contact'
  get '/blog', to: 'main#blog'

  resources :projects, only: [:index, :show]
  resources :contacts, only: :create
end
