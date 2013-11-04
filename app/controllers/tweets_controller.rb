class TweetsController < ApplicationController

  def index
    @tweets = Twitter.order('id DESC')
    @tweet = Twitter.new
  end

  def show
    @tweet = Twitter.find(params[:id])
  end

  def create
    @tweet = Twitter.new(params[:body])

    redirect_to :action => :index

  end

end
