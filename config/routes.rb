Rails.application.routes.draw do
  root 'main#home'
  post "/signup" => 'users#create', as: :signup
end
