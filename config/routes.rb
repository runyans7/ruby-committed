Rails.application.routes.draw do
  root 'pages#front'

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks"}
end
