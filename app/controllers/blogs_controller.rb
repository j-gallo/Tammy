class BlogsController < ApplicationController

  def create
    @blog = Blog.create(params[:blog])
    if @blog.save
      flash[:success] = "Blog Created!"
      redirect_to blog_path
    end
  end

  def destroy
    @blog.destroy
    redirect_back_or root_path
  end

#  def index
#    @title = "Disjointed Thoughts on Life"
#    @blogs = Blog.paginate(:page => params[:page])
#  end
end
