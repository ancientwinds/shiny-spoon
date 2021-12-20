class AddSentimentColumnToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :trump_tweets, :sentiment, :integer
    add_column :trump_tweets, :moronic_index, :integer
  end
end
