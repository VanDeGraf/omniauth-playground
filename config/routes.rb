Rails.application.routes.draw do
  root to: "devise/sessions#new"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "users/auth/:provider/callback", to: "users/omniauth_callbacks#entry"

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end
end
