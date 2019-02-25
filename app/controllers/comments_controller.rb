class CommentsController < ApplicationController
  # before_action :find_post


  # def new
  #   @comment = @post.comment.new
  # end

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end


  private
  def comment_params
    params.require(:comment).permit(:name, :body)
  end

  # def find_post
  #   @post = Post.find(params[:id])
  # end

end