class UsersController < ApplicationController
  def index
    @users = User.all
    @mooches = Mooch.all
  end

  def show
    if @user.nil?
      @user = User.find_by_username(params[:id])
    else
      @user = User.find(params[:id])
    end
  end
end
