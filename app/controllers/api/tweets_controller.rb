class Api::TweetsController < ApplicationController

  # GET /tweets
  def index
    @tweets = TrumpTweet.filter(params.slice(:published_at, :hashtags, :mentions, :retweets, :favorites))
    json_response(@tweets)
  end

  # GET /tweets/1
  def show
    @tweet = TrumpTweet.find(params[:id])
    json_response(@tweet)
  end

  private

  def filtering_params(params)
    params.slice(:published_at, :hashtags, :mentions, :retweets, :favorites)
  end
end