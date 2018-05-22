class ListsController < ApplicationController
  before_action :check_if_logged_in, expect: [:index, :show]
  before_action :get_list, only: [:show, :edit, :update, :destroy]
  before_action :check_is_owner, only: [:edit, :update, :destroy]


  def new
    @list = List.new
  end

  def create
    list = List.new list_params
    list.user = @current_user
    list.save
    redirect_to lists_path
  end

  def show
  end

  def index
    @lists = List.all
  end

  def edit
  end

  def update
    # raise 'hell'
    @list.update list_params

    # make changes to cocktails list (array of IDs in params[:cocktails] provided by form checkboxes)
    @list.cocktails.destroy_all
    params[:cocktails].each do |cid|
      @list.cocktails << Cocktail.find( cid )
    end

    redirect_to @list
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :note)
  end

  def get_list
    @list = List.find params[:id]
  end

  def check_is_owner
    redirect_to(lists_path) and return unless @current_user.id == @list.user_id
  end
end
