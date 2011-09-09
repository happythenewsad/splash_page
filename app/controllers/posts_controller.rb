class PostsController < ApplicationController
  
  def new
    @post = Post.new
    respond_to { |format| format.html }
  end
  
  def create
    STDERR.puts "in create**********"
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, :notice => "Thank you for signing up!" }
        format.js 
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def show_all
    @post = Post.all
  end
  
  def ajax_test
    STDERR.puts "ajax test***********"
    puts "ajax test*********\n"
    respond_to do |format|
      format.html
      format.js
    end
  end
  
end