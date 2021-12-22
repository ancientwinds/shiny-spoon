class Api::TweetsStatsController < ApplicationController
  # GET /tweets_stats
  def index
    @tweets_stats = TrumpTweetsDailyStat.filter(filtering_params(params))
    json_response(@tweets_stats, :ok)
  end

  # GET /tweets_stat/1
  def show
    @tweets_stat = TrumpTweetsDailyStat.find(params[:id])
    json_response(@tweets_stat, :ok)
  end

  private

  def filtering_params(params)
    params.slice(:sentiment, :start_date, :end_date, :tweet_count)
  end
end