class Admin::UsersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @users = User.all
  end

  def to_admin
    @users = User.find(params[:id])
    @user.to_admin
    redirect_to admin_users_path
  end

  def to_normal
    @users = User.find(params[:id])
    @user.to_normal
    redirect_to admin_users_path
  end
end
