class Admin::CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

end

