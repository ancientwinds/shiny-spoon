class TrumpTweet < ActiveRecord::Base
  include Filterable
  scope :published_at_gte, -> (ref_time) { where('published_at >= ?', ref_time) }
  scope :published_at_lt, -> (ref_time) { where('published_at < ?', ref_time) }
  scope :filter_by_favorites, -> (favorites) { where("favorites > ?", favorites) }
  scope :filter_by_retweets, -> (retweets) { where("retweets > ?", retweets) }
end