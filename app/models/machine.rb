class Machine < ApplicationRecord
  validates_presence_of :name, :status, :category

  belongs_to :location

  enum status: ['standby','running','out of service']
  enum category: ['bottle','can','keg']

  def current_beer_logo
    Beer.find_by(id: beer_id).icon
  end
end
