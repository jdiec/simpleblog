Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'
  root to: 'readers/home#index'
  get '/blog/:id' => 'readers/posts#show', as: :blog_post

  resources :elements
  scope module: 'authors' do
    get 'stats' => 'stats#index'
    resources :posts do
      resources :elements
    end
  end
end
