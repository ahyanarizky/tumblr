class PostsController < ApplicationController
  def index
    #code
    @posts = Post.all.order('created_at DESC')
  end
  
  def new
    #code
  end
  
  def create
    @post = Post.new(post_params)
    @post.save
    
    redirect_to @post
  end
  
  def show
    #code
    @post = Post.find(params[:id])
  end
  
  private
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
