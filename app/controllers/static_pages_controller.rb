class StaticPagesController < ApplicationController
  def index
    # @type [User]
    @user = current_user
  end
end