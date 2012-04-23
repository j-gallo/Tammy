require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Disjointed Thoughts by Tammy Portnoy"
  end

  describe "GET 'blog'" do

    before (:each) do
      get :blog
    end

    it "should be successful" do
      get 'blog'
      response.should be.success
    end

    it "should have the right title" do
      get 'blog'
      response.should have_selector("title", :content => "#{@base_title} | Disjointed Thoughts on Life")
    end
  end
end
