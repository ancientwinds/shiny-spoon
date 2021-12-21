class Api::TweetsController < ApplicationController

  # GET /tweets
  def index
    @tweets = TrumpTweet.filter(params.slice(:publishedAt, :hashtags, :mentions, :retweets, :favorites, :start_date, :end_date))
    json_response(@tweets)
  end

  # GET /tweets/1
  def show
    @tweet = TrumpTweet.find(params[:id])
    json_response(@tweet)
  end

  private

  def filtering_params(params)
    params.slice(:publishedAt, :hashtags, :mentions, :retweets, :favorites, :start_date, :end_date)
  end
end