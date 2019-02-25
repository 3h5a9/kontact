# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Hello I am here!!!
hi
this 18.04 makes me ang
whyry.
too slow for me.
hmm....
bundle install worked?
yes

okee got it setup? done
oke let's add admin attribute

rails g migration add_admin_to_users admin:boolean
rake db:migrate

rails c
User.create(email: 'someone@example.com', password: '123456', admin: true)
i don't know much about it actually... i know a lot of ror developers on ubuntu use zsh
so i am also going to use zsh
maybe eventually haha not nowthis 
this really takes too much time.
maybe abort it and try again
now the console is running.
let see is the server can run?
yessdone
done.
works.

great

after you created the user, can you navigate to /users/sign_in and are you able to sign in? yes, signed in successfully
great :-)
so we need a route /admin/posts where the admin can manage the posts right?
or do you have something else in mind? okee. do we also need a route /admin ? 1 sec
and what will be the purpose of /admin ? to manage the back end. something like dashboard
okee
let's see................
can i share my idea,
yes
so this will be something like that comment, is not it? the route?

admin do
  resources :posts
end

something like this?

there are a few ways of doing it, namespace and scope or the most common

namespace :admin do
  resources :posts
end

will give you /admin/posts, /admin/posts/post_id
for this option the controllers and views folder will have a folder admin within that folder a posts controller post views
admin_posts_path => Admin::Posts#index

scope :admin do
  resources :posts
end

will give you /admin/posts etc
but this doesn't expect an admin folder inside the controllers and views
posts_path => Posts#index
lots of difference
but which one is better?

the namespace option will give a better structure in your code and you will have a seperate controller so you don't have to check each action if user is admin, aha

so let's go for the namespace
first we need a dashboards controller
rails g controller admin/dashboard
should i create this controller?
yess, done.
okee, now add the route