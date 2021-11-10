class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def new
  end

  def show
    @user = current_user
  end

end
