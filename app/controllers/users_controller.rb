class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new user_params
    if @user.save 
      session[:users_id] = @user.id
    redirect_to root_path
    else
    render :new
  end
end

  private
  def users_params
    params.require(:users).permit(:email, :password, :password_confirmation)
  end

end
