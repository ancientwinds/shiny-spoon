class StateTemperature < ActiveRecord::Base
  include Filterable
  scope :filter_by_start_date, -> (ref_time) { where("\"recordedAt\" >= ?", ref_time) }
  scope :filter_by_end_date, -> (ref_time) { where("\"recordedAt\" <= ?", ref_time) }
  scope :filter_by_average_temperature, -> (favorites) { where("averageTemperature > ?", favorites) }
  scope :filter_by_state, -> (favorites) { where("state = ?", favorites) }
end