Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'

  resources :posts, except:[:destroy] do
    resources :comments
  end

  namespace :admin do
    get '', to: 'dashboard#index'
    resources :posts, except:[:show]
    resources :comments, except:[:show] 
    #yess, are there specific pages you want and don't?, lets create the view for indexing the comments.
  end

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# hello
# hi
# so in the regular posts controller we don't have an destroy action but we have resources :posts
# resources means it will add routes for index, new, show, create, edit, update AND destroy but we don't have destroy so don't need that route to be available
# admin posts controller doesn't have show so also don't make that route available,
# correct
# the main difference is, when you have the route available for admin_posts show and no action in the controller, it will return a 500 error
# now there is no route for it so it will return a 404 not found error
# sooo, what's next?
# so our admin panel is ready?
# Only the comments not
# /admin/comments ?
# /admin/posts/1/comments ?
# so we need to create another controller for comments, is ,n ot it yessss
# rails g controller admin/comments,
# should i do that wait yes you should
# i can't type in your terminal, readonly haha
# should i give you the access
# noo, never do that to any,
# No one, no one, never
# they can wipe all your data
# offcourse i wouldn't do that, but just don't ever let anyone in your terminal to be sure
# Ok Ok, but you are my friend, and i trust on you.
# i know, and you can trust me, but I believe things like this is not only about trust
# what if i make a mistake or what if I am pretending like you can trust me
# The world is full with crazy people haha
# ha ha ha. You'll never now who is behind that PC on the other side off the world haha, I know Mr. Hackman, ha ha ha lol, can you see the comments_controller