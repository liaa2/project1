class CommentsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  before_action :get_comment, only: [:show, :edit, :update, :destroy]

  def new
    @comment = Comment.new
  end

  def create
    # comment = Comment.new comment_params
    # comment.user_id = @current_user.id
    # comment.bar_id = @current_user.id
    # comment.save
    # bar = comment.bar.find params[:id]
    # redirect_to bar_path(comment.bar_id)
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    bar = Bar.find params[:id]
    @comment.destroy
    redirect_to bar_path(bar)
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :content)
  end

  def get_comment
    @comment = Comment.find params[:id]
  end
end
