require "rails_helper"

RSpec.describe "As a logged in user" do
  describe "When I click 'Flag as Out of service'" do
    it "changes the machine icon to red and the only button is 'return to service'" do
      User.destroy_all
      user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      l1 = Location.create(name: "Arapahoe")

      m1 = l1.machines.create(name: "can", status: 0, category: 0)
      visit '/dashboard'

      click_button "Flag as Out of Service"
      expect(current_path).to eq(dashboard_path)
      visit '/dashboard'

      expect(page).to have_content("Status: Out of service")
      expect(page).to_not have_content("Status: Standby")
      expect(page).to_not have_content("Status: Running")
      expect(page).to_not have_button("Start Run")
      expect(page).to_not have_button("End Run")
    end
  end
end
