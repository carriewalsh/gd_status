require "rails_helper"

RSpec.describe "As a logged in user" do
  describe "When I reach my home page" do
    it "shows me all the machines and their information" do
      User.destroy_all
      user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      l1 = Location.create(name: "Arapahoe")
      l2 = Location.create(name: "Brighton")

      m1 = l1.machines.create(name: "can", status: 0, category: 0)
      m2 = l1.machines.create(name: "bottle", status: 0, category: 1)
      m3 = l1.machines.create(name: "keg", status: 0, category: 2)
      m4 = l1.machines.create(name: "keg", status: 0, category: 2)

      visit dashboard_path

      expect(page).to have_content("Arapahoe")
      expect(page).to have_content("Brighton")
      # expect(page).to have_content("Can Line")
      # expect(page).to have_content("Keg Line")
      # expect(page).to have_content("Bottle Line")
      expect(page).to have_button("Start Run")
    end
  end
end
