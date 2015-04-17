Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :passwords => "passwords",
    :registrations => "registrations"
  }



  get "errors/error_404"
  get "errors/error_500"
  get "errors/error_500_fake"

  get "/robots.txt", to: "home#robots"

  # You can have the root of your site routed with "root"
  root 'home#index'

  unless Rails.env.development?
    match '*not_found', via: ActionDispatch::Routing::HTTP_METHODS, to: 'errors#error_404'
  end
end
