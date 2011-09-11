class PostsController < ApplicationController
  
  def new
    @post = Post.new
    respond_to { |format| format.html }
  end
  
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path }
        format.js 
      else
        STDERR.puts "Invalid email address. Not saving."
        format.html { render :action => "new"}
      end
    end
  end
  
  def show_all
    @post = Post.all
  end
  
  
end