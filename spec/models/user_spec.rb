require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presense_of :name }
    it { should validate_presense_of :email }
    it { should validate_presense_of :job_title }
    it { should validate_presense_of :role }
  end
end
