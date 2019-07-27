class Beer < ApplicationRecord
  validates_presense_of :name, :icon
end
