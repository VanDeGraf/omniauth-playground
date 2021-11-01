class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def yandex
    puts request.env["omniauth.auth"].credentials.token
  end

  def entry
    self.method(params[:provider]).call
  end
end