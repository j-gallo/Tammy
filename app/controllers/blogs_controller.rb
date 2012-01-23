class BlogsController < ApplicationController

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.content = params[:content]
    if @blog.save
      flash[:success] = "Blog Created!"
      redirect_to life_index_path
    else
      render 'admins/blog'
    end
  end

  def index
	  if params[:search]
		 @blog = Blog.search(params[:search],params[:page])
	  else
	 	 @blog = Blog.paginate(:page => params[:page], :per_page => 10)
	  end
		  
  end

  def edit
	@title = "Edit blog"
	@blog = Blog.find(params[:id])
  end

  def update
	  @blog = Blog.find(params[:id])
	  if @blog.update_attributes(params[:blog])
		  flash[:success] = "Blog Updated."
		  redirect_to life_index_path
	  else
		  @title = "Edit Blog"
		  render 'forms/_blog_edit'
	  end
  end

  def show
	  @title = Blog.find(params[:id]).title
	  @blog = Blog.find(params[:id])
  end

#### Destroys the current blog. If the blog is the only one with a given tag,
   # that tag is deleted. (This prevents tags with no corresponding blog.)
  def destroy
	  b = Blog.find(params[:id])
	  b.taggings.each do |t|
		  if (t.tag.taggings.count == 1)
			  t.tag.destroy
		  end
	  end
    Blog.find(params[:id]).destroy
    flash[:sucess] = "Blog deleted."
    redirect_to life_index_path
  end
end
