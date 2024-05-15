Rails.application.routes.draw do
  get "searches/index"
  post "descriptions/index"
  get "*path", to: "main#index"

  root "main#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
