class TweetsController < ApplicationController

  def index
    @tweets = Twitter.order('id DESC')
    @tweet = Twitter.new
  end

  def show
    @tweet = Twitter.find(params[:id])
  end

  def create
    @tweet = Twitter.new(params[:twitter])

    if (@tweet.save)
      redirect_to :action => :index
    else
      @tweets = Twitter.order('id DESC')
      render :action => :index
    end
  end
end
