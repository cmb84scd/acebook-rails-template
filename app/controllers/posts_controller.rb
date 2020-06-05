class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def index
    @new_post = Post.new
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id) # Need to fix it !
  end
end
