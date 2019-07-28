require "rails_helper"

RSpec.describe "As a visitor" do
  describe "when I visit the welcome page" do
    it "shows me a guest link and a login section" do
      visit welcome_path
      expect(current_path).to eq(welcome_path)

      expect(page).to have_content("View Site as Guest")
      expect(page).to have_button("Log In")
    end
  end
end


RSpec.describe "As a loggged in user" do
  describe "when I visit the welcome page" do
    xit "take me to my dashboard" do
      Beer.destroy_all
      Machine.destroy_all
      User.destroy_all
      Location.destroy_all
      user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      l1 = Location.create(name: "Arapahoe")
      b1= Beer.create(name: "yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Yeti_Imperial_Stout.png")
      m1 = l1.machines.create(name: "can", status: 1, category: 0, beer_id: b1.id, size: 1)

      visit welcome_path

      expect(current_path).to eq(dashboard_path)
    end
  end
end
