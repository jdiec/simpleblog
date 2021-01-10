Rails.application.routes.draw do
  resources :elements
  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end
  devise_for :authors
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'readers/home#index'
end
