class Note < ApplicationRecord
  include Filterable
  belongs_to :dashboard
end
