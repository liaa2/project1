class CocktailsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  before_action :get_cocktail, only: [:show, :edit, :update, :destroy]
  def new
    @cocktail = Cocktail.new
  end

  def create
  end

  def show
    @lists = @cocktail.lists.where(user_id: @current_user)
    # raise "hell"
  end

  def index
    @cocktails = Cocktail.all
  end

  def favourite
    list = List.find params[:list_id]
    unless list.user == @current_user
      # ensure list belongs to current user, i.e. prevent list ID hackers!
      redirect_to cocktails_path and return
    end
    cocktail = Cocktail.find params[:id]
    if list.cocktails.include? cocktail
      flash[:duplicate_message] = "#{ cocktail.name } is already in your #{ list.name }."
    else
      list.cocktails << cocktail
      flash[:success_message] = "Added #{ cocktail.name } to #{ list.name }."
    end
    redirect_to cocktail.bar  # take us to the show page for this cocktail's bar
  end

  def unfavourite
    list = List.find params[:list_id]
    unless list.user == @current_user
      redirect_to cocktail_path and return
    end
    cocktail = Cocktail.find params[:id]
    list.cocktails.delete(cocktail)
    flash[:message] = "Deleted #{cocktail.name} from your #{list.name}."
    redirect_to list_path(list)
  end

  def edit
  end

  def update
    @cocktail.update cocktail_params
    redirect_to @cocktail
  end

  def destroy
    # @cocktail.destroy
    #
    # redirect_to profile_path
  end

  private
  def get_cocktail
    @cocktail = Cocktail.find params[:id]
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :bar_id)
  end
end
