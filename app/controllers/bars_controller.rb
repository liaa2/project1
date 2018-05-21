class BarsController < ApplicationController
  before_action :check_if_logged_in, expect: [:index, :show]
  before_action :get_bar, only: [:show, :edit, :update, :menu, :destroy]

  def new
    @bar = Bar.new
  end

  def create
    bar = Bar.new bar_params
    bar.save
    redirect_to bars_path
  end

  def favourite
    # this will only work if you're logged in
    bar = Bar.find params[:id]
    unless @current_user.bars.include? bar
      # not already a favourite bar
      @current_user.bars << bar
    end
    redirect_to bar
  end

  def unfavourite
    # this will only work if you're logged in
    # User.first.bars.include? Bar.first
    bar = Bar.find params[:id]
    @current_user.bars.delete( bar )
    redirect_to bar
  end

  def menu
    # @lists = @current_user.lists
    @bar = Bar.find params[:id]
    # render template: "cocktails/index"
    render :cocktails_path
  end

  def show
  end

  def index
    @bars = Bar.all
    @lists = @current_user.lists
  end

  def edit
  end

  def update
    @bar.update bar_params
    redirect_to @bar
  end

  def destroy
    @bar.destroy
    redirect_to bars_path
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :image, :description, :phone, :website)
  end

  def get_bar
    @bar = Bar.find params[:id]
  end
end
