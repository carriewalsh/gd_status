class Machine < ApplicationRecord
  validates_presence_of :name, :status, :type

  belongs_to :location
end
