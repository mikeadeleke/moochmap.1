class UsersController < ApplicationController
  def index
    @users = User.all
    @mooches = Mooch.all
  end

  def show
    @user = User.find(params[:id])
  end
end
