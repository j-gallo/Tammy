class PagesController < ApplicationController

	require "net/http"
	require "uri"

  def home
    @title = "Home"
    @key = "lwtSLQJtXyqyVPZ55pcTAOYmK99Rt6lUmJyr42nz5CZqRrbVYU"
    @host = "mydadwearsbowtieseveryday.tumblr.com"
    uri = URI.parse("http://api.tumblr.com/v2/blog/#{@host}/posts?api_key=#{@key}&limit=1")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    bow_ties = JSON.parse(response.body).to_json(:only => ["response", "blog", "posts", "photos","alt_sizes","url"])
    @bow_ties = JSON.parse(bow_ties)
  end

end
