class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
  #   # start with a new Post
    @new_row_posts = Post.new
  #   # assign user-entered form data to Post's columns
    @new_row_posts["author"] = params["author"]
    @new_row_posts["image"] = params["image"]
    @new_row_posts["body"] = params["body"]
  #   # save Post row
  @new_row_posts.save
  #   # redirect user
  redirect_to "/posts"
  end

end
