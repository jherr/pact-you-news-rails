Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  get 'pages/welcome'
  root 'pages#welcome'
  # get 'application#hello'
  get '/hello', to: 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
