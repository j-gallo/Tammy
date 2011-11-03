require 'spec_helper'

describe BlogsController do
  render_views

  describe "POST 'create'" do

    before (:each) do
      @attr = { :title => "Hello", :content => "Goodbye" }
    end

    it "should create a blog" do
      lambda do
       post :create, :blog => @attr
      end.should change(Blog, :count).by(1)
    end
  end
end

