class AddSpxDataToDaily < ActiveRecord::Migration[6.1]
  def change
    add_column :trump_tweets_daily_stats, :spx_open, :decimal
    add_column :trump_tweets_daily_stats, :spx_close, :decimal
    add_column :trump_tweets_daily_stats, :spx_high, :decimal
    add_column :trump_tweets_daily_stats, :spx_low, :decimal
  end
end
