class HomeController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    redirect_to '/'
  end
  
  def create_comment
    comment = Comment.new
    comment.content = params[:content]
    comment.post_id = params[:id_of_post]
    comment.save
    redirect_to '/'
  end
  

end
