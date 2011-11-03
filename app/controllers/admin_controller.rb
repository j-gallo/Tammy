class AdminController < ApplicationController

  def admin
    @title = "Admin"
  end

  def blog
    @title = "Blog"
    @blog = Blog.new
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      flash[:success] = "Admin Created!"
    else
      @admin.password = ""
      @admin.password.confirmation = ""
      render 'admin/admin'
    end
  end

  def show
    @title = Admin.name
  end

end
