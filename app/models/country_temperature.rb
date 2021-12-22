class CountryTemperature < ActiveRecord::Base
  include Filterable
  scope :filter_by_start_date, -> (ref_time) { where("\"recordedAt\" >= ?", ref_time) }
  scope :filter_by_end_date, -> (ref_time) { where("\"recordedAt\" <= ?", ref_time) }
  scope :filter_by_average_temp, -> (favorites) { where("averageTemperature = ?", favorites) }
  scope :filter_by_country, -> (favorites) { where("country = ?", favorites) }
end