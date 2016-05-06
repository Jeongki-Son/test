class HomeController < ApplicationController
  def index
    @post = Post.all.reverse
  end
  
  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    
    redirect_to :back
  end
  
  def create_comment
    comment = Reply.new
    comment.content = params[:content]
    comment.post_id = params[:post_id]
    comment.save
    redirect_to :back
  end
  
  
  def create
  end

  def read
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to :back
  end
   
  def realUpdate
    @post = Post.find(params[:post_id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to '/home/index'
  end
  
  def update_view
    @post = Post.find(params[:post_id])
  end
  
end
