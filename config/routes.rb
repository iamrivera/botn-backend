Rails.application.routes.draw do
  resources :pockets do 
    resources :napkins
  end

  # resources :napkins 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
