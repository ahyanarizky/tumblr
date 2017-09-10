class PostsController < ApplicationController
  def index
    #code
    @posts = Post.all.order('created_at DESC')
  end
  
  def new
    #code
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def show
    #code
    @post = Post.find(params[:id])
  end
  
  def edit
    #code
    @post = Post.find(params[:id])

  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else 
      render 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
    #code
  end
  
  private
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
