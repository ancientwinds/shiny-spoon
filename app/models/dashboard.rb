class Dashboard < ActiveRecord::Base
  include Filterable
  has_many :notes
end