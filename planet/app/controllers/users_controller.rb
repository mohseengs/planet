class UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
    @posts = @user.posts.all
    puts @posts.class.name
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.phone = params[:phone]
    @user.profile_picture = params[:profile_picture]
    if @user.save
      redirect_to root_path
    else
      render signup_path  
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
