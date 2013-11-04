class TweetsController < ApplicationController

  def index
    @tweets = Twitter.order('id DESC')
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = tweet.new(params[:tweet])
  end

end
