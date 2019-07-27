class Location < ApplicationRecord
  validates_presence_of :name

  has_many :machines
end
