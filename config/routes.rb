Rails.application.routes.draw do
  root 'pages#front'

  devise_for :users
end
