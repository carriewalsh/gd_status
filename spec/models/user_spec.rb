require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :job_title }
    it { should validate_presence_of :role }
  end
end
