Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # If you have a dedicated config/environments/staging.rb
  mount LetterOpenerWeb::Engine, at: "/mail"

  root "root#index"
  post "/", to: "root#create"
  post '/send_email', to: 'root#send_email' #it maps the button click action to send_email

  # if you want, Change this to use POST
  post 'test_send_email', to: 'root#send_email_test'
end
