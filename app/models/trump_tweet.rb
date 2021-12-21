class TrumpTweet < ActiveRecord::Base
  include Filterable
  scope :filter_by_start_date, -> (ref_time) { where("\"publishedAt\" >= ?", ref_time) }
  scope :filter_by_end_date, -> (ref_time) { where("\"publishedAt\" <= ?", ref_time) }
  scope :filter_by_favorites, -> (favorites) { where("favorites > ?", favorites) }
  scope :filter_by_retweets, -> (retweets) { where("retweets > ?", retweets) }
end