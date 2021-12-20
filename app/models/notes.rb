class Note < ActiveRecord::Base
  include Filterable
  belongs_to :dashboard
end