class CocktailsController < ApplicationController
  before_action :check_if_logged_in, expect: [:index, :show]
  before_action :get_cocktail, only: [:show, :edit, :update, :destroy]
  def new
    @cocktail = Cocktail.new
  end

  def create
  end

  def show
  end

  def index
    @cocktails = Cocktail.all
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
    params.require(:cocktail).permit(:name, :image, :description, :bar_id)
  end
end
