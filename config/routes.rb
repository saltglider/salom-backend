Rails.application.routes.draw do
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/'  do
    scope module: :v1 do
      resources :users
      # We are going to list our resources here
    end
  end
end
