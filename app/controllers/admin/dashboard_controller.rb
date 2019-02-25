class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?
  
  def index
  end

  private

  def is_admin?
    unless current_user.admin
      redirect_to root_path
    end
  end
end

# The code will run from top to bottom, so it start's with checking is the user is signed in
# if the user is signed in, it will continue and runs is_admin?
# unless the current signed in user is admin it will redirect to the root_path
# In that view you can add a signout link if you want, you can even render a whole different template
# OK
# let's continue with the posts management for admin

# rails g controller admin/posts
# but post already have controller, from where wen can create and edit posts
# yesss. that controller is for the not signedin / not admin users
# this controller will be for the admin, aha, and if every signed in user can use the admin panel then?
# they cant because they are not admin, that's why we have the before_action is_admin? in here, hmm

# let me explain(try)

# let's say users (signed in or not) can view index, new, create, edit, update

# admin can do everything so admin must have index, new, create, edit, update, destroy

# We could create 1 controller and in the destroy action check if user is admin, but to keep it more structured we create a different controller for admin, got it.
# for this simple 1 thing it sounds like more work but when you build more, this is eassier to manage. If you want to adjust your code or add stuff, ha ha ha.
# so can we creaate that controller? yess
# rails g controller admin/posts
# i am on the admin/posts controller