IntegrationTestExample::Application.routes.draw do
    root :to => "home#frontpage"

    match "login" => "sessions#login", :via => :post
    match "logout" => "sessions#logout", :via => :post
    match "welcome" => "home#welcomepage", :via => :get, :as => :welcomepage
    match "" => "home#frontpage", :via => :get, :as => :frontpage
end
