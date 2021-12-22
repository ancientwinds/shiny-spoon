class AddCreatedAtToTrumpTweetsDailyStats < ActiveRecord::Migration[6.1]
  def change
    add_column :trump_tweets_daily_stats, :created_at, :date
    add_column :trump_tweets_daily_stats, :updated_at, :date
  end
end
