class BlogsController < ApplicationController

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.content = params[:content]
    if @blog.save
      flash[:success] = "Blog Created!"
      redirect_to life_index_path
    else
      render 'admin/blog'
    end
  end

  def index
	  @title = "Blogs"
	  if params[:search]
		  @blog = Blog.paginate(:page => params[:page], :per_page => 10).find(:all, :conditions => ['content LIKE ?', "%#{params[:search]}%"])
	  else
	 	 @blog = Blog.paginate(:page => params[:page], :per_page => 10)
	  end
		  
  end

  def edit
	@title = "Edit blog"
	@tag = life_taggings_path(Blog.find(params[:id]))
  end

  def show
	  @title = Blog.find(params[:id]).title
	  @blog = Blog.find(params[:id])
  end

  def destroy
    Blog.find(params[:id]).destroy
    flash[:sucess] = "Blog deleted."
    redirect_to life_index_path
  end
end
