Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'askthecoach', to: 'pages#askthecoach'
  get 'coachanswers', to: 'pages#coachanswers'
end
