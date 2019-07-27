class Machine < ApplicationRecord
  validates_presence_of :name, :status, :category

  belongs_to :location

  enum status: ['standby','running','out of service']
  enum category: ['bottle','can','keg']
  enum size: ['12_can','16_can','19_can','12_bottle','22_bottle']

  def current_beer_logo
    Beer.find_by(id: beer_id).icon
  end

  def current_beer
    Beer.find_by(id: beer_id).name.titleize
  end
end
