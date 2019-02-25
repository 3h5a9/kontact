module Posts
  extend ActiveSupport::Concern

  included do
    before_action :find_post, only:[:show, :edit, :update, :destroy]
  end

  def index
    @posts = Post.all
  end

  def new
  end
  
  def create
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end

# Please test out all the actions if you want :-) maybe there are bugs but i don't think so... BRB
# what is BRB got it, Be Right Back ahaha
# yess old skool brb, do you know MSN messenger? yes from yahoo
# wasn't it from microsoft? just forget, who know i use that may be 10 or 12 years ago last time. haha yeah I don't know if it still exist in the form like back in the days
# But with msn they always say brb and stuff like that
# anyways, is it all working as expected? but we did not create any view for single post as it comes from posts/1 like this, so we dont need admin/posts/1 is not it
# Depends on if you want to view 1 post as admin, dont need that, as the outcome is same view single post
# then we actually need to remove it from the module and put it only in the 'normal' posts_controller, aha.
# okee, adjust it. also changed the admin_posts_controller#destroy
# Now you only need to adjust the routes to make it more secure, but why, route and security???
# open up routes.rb