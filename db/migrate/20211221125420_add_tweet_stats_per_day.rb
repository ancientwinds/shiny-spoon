class AddTweetStatsPerDay < ActiveRecord::Migration[6.1]
  def change
    create_table :trump_tweets_daily_stats do |t|
      t.datetime :date
      t.bigint :average_impact_level
      t.integer :tweet_count
    end
  end
end
