class UsersController < ApplicationController

  before_action :check_if_logged_in, only: [:profile]
  # respond_to :js, :json, :html

  def new
    @user = User.new
  end

  def create
    user = User.create user_params

    if user.persisted?
      session[:user_id] = user.id
      redirect_to profile_path
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def index
  end

  def show
    @user = User.find params[:id]
    # @list = List.find params[:id]
    # respond_with @list
  end

  def profile
    @user = @current_user
    render :show
  end

  def update
    cocktail = Cocktail.find params[:id]
    redirect_to bar_path(bar)
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
