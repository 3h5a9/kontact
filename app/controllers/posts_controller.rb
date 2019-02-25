class PostsController < ApplicationController
  include Posts

  def show
    @comment = @post.comments.new
  end

end