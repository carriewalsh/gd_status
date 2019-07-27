class Machine < ApplicationRecord
  validates_presense_of :name, :status, :type

  belongs_to :location
end
