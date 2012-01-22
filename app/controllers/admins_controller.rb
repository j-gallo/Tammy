class AdminsController < ApplicationController

  def blog
    @title = "Blog"
    @blog = Blog.new
  end

  def create
    @admin = Admin.create(params[:admin])
    @admin.save
  end

  def edit
	@title = "Edit Admin"
	@admin = Admin.find(params[:id])
  end

  def update
	  @admin = Admin.find(params[:id])
	  if @admin.update_attributes(params[:admin])
		  flash[:success] = "Admin Updated."
		  redirect_to admin_index_path
	  else
		  @title = "Edit Admin"
		  render 'edit'
	  end
  end

  def show
    @title = 'admin'
  end

end
