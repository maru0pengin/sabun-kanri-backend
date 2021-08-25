Rails.application.routes.draw do
  get "hello_world", to: 'application#hello_world'
  scope :api do
    resources :psd, only: [:index, :create, :destroy]
  end
end