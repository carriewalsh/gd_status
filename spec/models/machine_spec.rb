require "rails_helper"

RSpec.describe Machine, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :status }
    it { should validate_presence_of :category }
  end

  describe "relationships" do
    it { should belong_to :location }
  end

  describe "instance methods" do
    it "returns the link for the current beer" do
      l1 = Location.create(name: "Arapahoe")
      b1= Beer.create(name: "yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Yeti_Imperial_Stout.png")
      m1 = l1.machines.create(name: "bottle", status: 0, category: 0, beer_id: b1.id)

      expect(m1.current_beer_logo).to eq(b1.icon)
    end
  end
end
