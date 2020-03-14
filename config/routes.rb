Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/items" => "items#index"
    get "/items/:id" => "items#show"
    post "/items" => "items#create"
    patch "/items/:id" => "items#update"
    delete "items/:id" => "items#destroy"
  end
end
