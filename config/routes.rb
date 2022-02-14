Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"
  # root is the homepage
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"

  # VERB "path", to: "controller#action"
end
