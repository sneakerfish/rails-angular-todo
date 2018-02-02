Rails.application.routes.draw do
  get 'site/index'

  root to: "site#index"

  namespace :api do
    namespace :v1 do
      resources :todos, only: [:index, :create, :destroy, :update]
    end
  end
end
