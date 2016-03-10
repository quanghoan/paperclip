class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index
  	@posts = Post.all
  end

  def create
  	# byebug
  	@post = Post.new(post_params)
  	if @post.save
  		flash[:success]  = "created successfully."
  		redirect_to posts_url
  	else
  		flash[:error] = "something wrong."
  		render :new
  	end	
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body, :image)
  end
end
