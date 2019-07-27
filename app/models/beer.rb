class Beer < ApplicationRecord
  validates_presence_of :name, :icon
end
