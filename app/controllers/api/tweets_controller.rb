class Api::TweetsController < ApplicationController
  # GET /tweets
  def index
    @tweets = TrumpTweet.filter(filtering_params(params))
    csv_to_array(@tweets)
    json_response(@tweets, :ok)
  end

  # GET /tweets/1
  def show
    @tweet = TrumpTweet.find(params[:id])
    json_response(@tweet, :ok)
  end

  private

  def filtering_params(params)
    params.slice(:retweets, :favorites, :start_date, :end_date)
  end

  def csv_to_array(object)
    if object.is_a?(TrumpTweet)
      object.hashtags = object.hashtags&.split(',')
      object.mentions = object.mentions&.split(',')
    else object.is_a?(Array)
      object.each do |obj|
        csv_to_array(obj)
      end
    end
  end
end