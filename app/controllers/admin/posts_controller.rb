class Admin::PostsController < Admin::DashboardController
  include Posts

  def destroy
    @post.destroy
    flash[:success] = "Post deleted successfully."
    redirect_to admin_posts_path
  end

end
