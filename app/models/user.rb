class User < ApplicationRecord
  validates_presense_of :name, :email, :role, :job_title
  validates_uniqueness_of :email
  has_secure_password

  enum role: ['admin', 'user']


end
