require "rails_helper"

RSpec.describe Location, type: :model do
  describe "validations" do
    it { should validate_presense_of :name }
  end

  describe "relationships" do
    it { has_many :machines}
  end
end
