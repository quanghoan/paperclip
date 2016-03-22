class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		flash[:success]  = "created successfully."
  		redirect_to posts_url
  	else
  		flash[:error] = "something wrong."
  		render :new
  	end	
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to request.referrer
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body, :image)
  end
end
