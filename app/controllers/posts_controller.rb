class PostsController < ApplicationController
  before_filter :load_resources
  def index
    @posts = Post.all

   respond_with @posts
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_with @post
  end

   def load_resources
    @galleries_footer = Gallery.find(:all, :limit => 6)
  end


  
end
