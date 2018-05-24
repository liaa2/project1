class CocktailsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  before_action :get_cocktail, only: [:show, :edit, :update, :destroy]

  def new
    @cocktail = Cocktail.new
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @cocktail.image = req["public_id"]
    end
    @cocktail.bar_id = params[:id]
    @ingredients = Ingredient.all
  end

  def create
    cocktail = Cocktail.new cocktail_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      cocktail.image = req["public_id"]
    end
    cocktail.ingredients << Ingredient.find( params[:ingredients] )
    cocktail.save
    # raise "hell"
    redirect_to cocktail.bar
  end

  def show
    @lists = @cocktail.lists.where(user_id: @current_user)
    # raise "hell"
  end

  def index
    @cocktails = Cocktail.all
  end

  def favourite
    # raise "hell"

    # if list_name is present
    # make a new list with that name, and store the result
    # else
    # use the given list id to add the cocktail to
   if params[:list_name].present?
     list = List.create name: params[:list_name], user: @current_user
   else
     list = List.find params[:list_id]
     unless list.user == @current_user
       # ensure list belongs to current user, i.e. prevent list ID hackers!
       redirect_to cocktails_path and return
     end
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
    @ingredients = Ingredient.all
  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @cocktail.image = req["public_id"]
    end

    @cocktail.update cocktail_params

    @cocktail.ingredients.destroy_all
    @cocktail.ingredients << Ingredient.find( params[:ingredients] )
    # params[:ingredients].each do |iid|
    #   @cocktail.ingredients << Ingredient.find( iid )
    # end

    redirect_to @cocktail
  end

  def destroy
    @cocktail.destroy
    # raise "hell"
    redirect_to bar_path(@cocktail.bar_id)
  end

  private
  def get_cocktail
    @cocktail = Cocktail.find params[:id]
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :bar_id)
  end
end
