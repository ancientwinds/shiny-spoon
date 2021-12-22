class TrumpTweetsDailyStat < ApplicationRecord
  include Filterable
  scope :filter_by_start_date, -> (ref_time) { where("\"date\" >= ?", ref_time) }
  scope :filter_by_end_date, -> (ref_time) { where("\"date\" <= ?", ref_time) }
  scope :filter_by_sentiment, -> (sentiment) { where("sentiment = ?", sentiment) }
  scope :filter_by_tweet_count, -> (tweet_count) { where("tweet_count > ?", tweet_count) }
end
