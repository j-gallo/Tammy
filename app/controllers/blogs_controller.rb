class BlogsController < ApplicationController

  def create
    @blog = Blog.create(params[:blog])
    if @blog.save
      flash[:success] = "Blog Created!"
      render 'pages/blog'
    else
      render 'pages/blog'
    end
  end

  def destroy
    @blog.destroy
    redirect_back or root_path
  end

  def index
    @title = "Disjointed Thoughts on Life"
    @blogs = Blog.all
  end
end
