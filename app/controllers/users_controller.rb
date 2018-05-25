class UsersController < ApplicationController

  before_action :check_if_logged_in, only: [:profile]


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
    if @current_user.update user_params
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @current_user.image = req["public_id"]
        @current_user.save
      end
      redirect_to profile_path
    else
      flash[:errors] = @current_user.errors.full_messages
      redirect_to edit_user_path
    end

  end

  def edit
    @user = User.find params[:id]
  end

  private

  # def get_user
  #   @user = User.find params[:id]
  # end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
