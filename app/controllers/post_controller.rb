class PostController < ApplicationController
  # before_action :require_login, only: [:index, :new, :create]

  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])

    if @post.save
      redirect_to new_post_path
    else
      render :new
    end
  end
  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

end
