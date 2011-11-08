class BlogsController < ApplicationController

  def create
    @blog = Blog.create(params[:blog])
    if @blog.save
      flash[:success] = "Blog Created!"
      redirect_to life_path
    else
      render 'admin/blog'
    end
  end

  def destroy
    Blog.find(params[:id]).destroy
    redirect_back_or life_path
  end
end