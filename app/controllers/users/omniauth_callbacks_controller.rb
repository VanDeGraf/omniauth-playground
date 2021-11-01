class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def yandex
    puts request.env["omniauth"]
  end

  def entry
    self.method(params[:provider]).call
  end
end