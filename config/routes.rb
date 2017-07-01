Rails.application.routes.draw do

  resources :coins, only: [:index, :show]

end
