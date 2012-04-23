class SitemapController < ApplicationController

	def sitemap
		@entries = Blog.find(:all, :order => "created_at DESC")
		headers["Content-Type"] = "text/xml"
		headers["Last-Modified"]= @entries[0].created_at.httpdate
	end
end
