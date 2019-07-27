require "rails_helper"

RSpec.describe Beer, type: :model do
  describe "validations" do
    it { should validate_presense_of :name }
    it { should validate_presense_of :icon }
  end
end
