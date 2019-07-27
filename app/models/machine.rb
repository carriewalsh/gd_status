class Machine < ApplicationRecord
  validates_presence_of :name, :status, :type

  belongs_to :location

  enum status: ['standby','running','out of service']
  enum type: ['bottle','can','keg']
end
