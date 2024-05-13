Rails.application.routes.draw do
  post "describe/index"
  get "*path", to: "main#index"

  root "main#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
