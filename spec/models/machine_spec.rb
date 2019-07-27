require "rails_helper"

RSpec.describe Machine, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :status }
    it { should validate_presence_of :type }
  end

  describe "relationships" do
    it { should belong_to :location }
  end
end
