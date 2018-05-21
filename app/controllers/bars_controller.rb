class BarsController < ApplicationController
  before_action :get_bar, only: [:show, :edit, :update, :destroy]
  def new
  end

  def create
  end

  def show
  end

  def index
    @bars = Bar.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_bar
    @bar = Bar.find params[:id]
  end
end
