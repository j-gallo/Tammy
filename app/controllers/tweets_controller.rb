class TweetsController < ApplicationController

  def show
    @tweet = Tweet.find(1)
  end
end
