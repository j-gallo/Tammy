class BlogsController < ApplicationController
<<<<<<< HEAD

  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:new, :edit])
=======
	
  uses_tiny_mce(:options => AppConfig.advanced_mce_options, :only => [:new, :edit])
>>>>>>> 6820f3e62fa3be6a65c651e3bbdb42d9c259b48d

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
