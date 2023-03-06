class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @user = User.find(session[:user_id])
    post = @user.posts.new
    post.caption = params[:caption]
    post.content = params[:content]

    if( post.save)
      redirect_to user_post_path(post.id)
    end

  end
end
