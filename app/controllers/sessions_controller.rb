class SessionsController < ApplicationController

  def create
    admin = Admin.authenticate(params[:session][:name],
                               params[:session][:password])
    if admin.nil?
      flash.now[:error] = "Invalid username or password."
      render 'admin/admin'
    else
      sign_in admin
      redirect_back_or admin
      flash.now[:success] = "YAY!"
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
