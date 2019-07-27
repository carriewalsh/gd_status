class Location < ApplicationRecord
  validates_presense_of :name

  has_many :machines
end
