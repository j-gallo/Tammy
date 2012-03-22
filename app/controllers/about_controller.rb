class AboutController < ApplicationController

	def index
		@about = About.first
	end

	def edit
		@about = About.first
	end

	def update
	  	@about = About.first
	  	if @about.update_attributes(params[:about])
			flash[:success] = "About me info updated."
			redirect_to about_index_path
		else
			@title = "Edit info"
			render 'forms/_about'
		end
	end

end
