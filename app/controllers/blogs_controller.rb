class BlogsController < ApplicationController

  def create
    @blog = Blog.create(params[:blog])
    if @blog.save
      flash[:success] = "Blog Created!"
      redirect_to blog_path
    else
      render 'admin/blog'
    end
  end

  def destroy
    @blog.destroy
    redirect_back_or root_path
  end
end
