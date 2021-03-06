class BarsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  before_action :get_bar, only: [:show, :edit, :update, :destroy]

  def new
    @bar = Bar.new
  end

  def create
    bar = Bar.create bar_params
    if bar.persisted?
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        bar.image = req["public_id"]
        bar.save
      end
      redirect_to bars_path
    else
      flash[:bar_error] =  bar.errors.full_messages
      redirect_to new_bar_path
    end
  end

  def search
    # @results = Bar.where(name: params[:query])
    # @results = Bar.where("name LIKE ? OR address LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    terms = params[:query].split(" ")
    puts terms
    # @results = Bar.where("description LIKE ? AND description LIKE ?", "%#{terms[0]}%","%#{terms[1]}%")
    @results = Bar.where((["description ILIKE ?"] * terms.size).join(" AND "), *terms.map{|key| "%#{key}%"})
  end


  def comment
    comment = Comment.new
    comment.user_id = @current_user.id
    comment.content = params[:content]
    comment.bar_id = params[:id]
    comment.save
    redirect_to bar_path(comment.bar_id)
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

  def show
    @comments = Comment.all
  end

  def index
    @bars = Bar.all
    @lists = @current_user.lists

    @bar_locations = @bars.map do |b|
      {lat: b.latitude, lng: b.longitude, name: b.name, phone: b.phone, address: b.address, website: b.website}
    end
    # puts @bar_locations

  end

  def edit
  end

  def update
    if @bar.update bar_params
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @bar.image = req["public_id"]
        @bar.save
      end
      redirect_to @bar
    else
      flash[:bar_error] =  @bar.errors.full_messages
      redirect_to edit_bar_path( @bar )
    end
  end

  def destroy
    @bar.destroy
    redirect_to bars_path
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :description, :phone, :website, :address)
  end

  def get_bar
    @bar = Bar.find params[:id]
  end
end
