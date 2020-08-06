class PostController < ApplicationController
  before_action :require_login, only: [:index, :new, :create]

  def index 
    @post = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params)
    @post.save
    redirect_to post_path(@post)
  end
  private

  def post_params
    params.require(:post).permit(:username, :email, :password)
  end

  
end
