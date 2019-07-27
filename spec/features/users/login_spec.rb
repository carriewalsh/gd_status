require "rails_helper"

RSpec.describe "As a registered user", type: :feature do
  before :each do
    User.destroy_all
    @user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
    visit '/login'
  end

  describe "when I enter my correct credentials" do
    it "logs me in" do
      fill_in "email", with: "email@example.com"
      fill_in "password", with: "test"
      click_button "Log In"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Successfully logged in")
    end
  end

  describe "when I enter incorrect credentials" do
    it "flashes an error message" do
      fill_in "email", with: "email@example.com"
      fill_in "password", with: "not_test"
      click_button "Log In"

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Email/password combination incorrect")

    end
  end
end
