require "rails_helper"

RSpec.describe "As a logged in user" do
  describe "When I click 'end run'" do
    it "changes the machine icon to grey and has 2 buttons now" do
      Beer.destroy_all
      Machine.destroy_all
      User.destroy_all
      Location.destroy_all
      user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      l1 = Location.create(name: "Arapahoe")
      b1= Beer.create(name: "yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Yeti_Imperial_Stout.png")
      m1 = l1.machines.create(name: "can", status: 1, category: 0, beer_id: b1.id, size: 1)
      visit '/dashboard'

      click_button "End Run"

      expect(page).to_not have_content("Status: Running")
      expect(page).to have_content("Status: Standby")
      expect(page).to have_button("Start Run")
    end
  end
end
