require "rails_helper"

RSpec.describe "As a logged-in registered user", type: :feature do
  describe "when I click log out" do
    User.destroy_all
    user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit '/login'
    it "logs me out" do
      click_button "Log Out"

      expect(current_path).to eq('/welcome')
      expect(page).to have_content("Successfully logged out")
      expect(current_user).to eq(nil)
    end
  end
end
