class Beer < ApplicationRecord
  validates_presence_of :name, :icon

  enum category: ["year_round", "seasonal", "tank_farm", "yeti", "wood_werks"]
end
