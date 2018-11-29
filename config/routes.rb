Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :create, :update, :destroy] do
    resources :comments, only: [:index, :show, :create, :update,:destroy]
  end

  resources :news_feeds, only: [:index, :show]
  post 'news_feeds/emails', controller: :news_feeds, action: :send_emails

end
