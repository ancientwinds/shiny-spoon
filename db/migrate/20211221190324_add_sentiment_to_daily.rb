class AddSentimentToDaily < ActiveRecord::Migration[6.1]
  def change
    add_column :trump_tweets_daily_stats, :sentiment, :integer
  end
end
