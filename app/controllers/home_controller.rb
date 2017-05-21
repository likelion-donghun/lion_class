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
  
  

end
