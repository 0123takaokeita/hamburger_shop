Rails.application.routes.draw do

  # @example https://localhost:3000/api/v1/restaurants/
  namespace :api do
    namespace :v1 do
      resources :restaurants do
        # example https://localhost:3000/api/v1/restaurants/1/foods
        resources :foods, only: %i[index]
      end

      resources :line_foods, only: %i[index create]
      put 'line_foods/replace', to: 'line_foods#replace'

      resources :orders, only: %i[create]

    end
  end
end
