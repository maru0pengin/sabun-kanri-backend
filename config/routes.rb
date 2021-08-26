Rails.application.routes.draw do
  get "hello_world", to: 'application#hello_world'
  scope :api do
    resources :posts, only: [:index, :create, :destroy]
  end
end