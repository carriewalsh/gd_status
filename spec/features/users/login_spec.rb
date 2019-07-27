require "rails_helper"

RSpec.describe, type: :feature do
  describe "as a registerd user" do
    describe "when I enter my correct credentials" do
      before :each do
        User.destroy_all
        @user = User.create(name: "Test Tester", email: "email@example.com", password: "password", role: "admin", job_title: "manager")
      end
      it "logs me in" do
        visit '/login'

        fill_in "email", with: "email@example.com"
        fill_in "password", with: "test"
        click_button "Log In"

        expect(current_path).to eq('/dashboard')
        expect(page).to have_content("Successfully logged in")
      end
    end

    describe "when I enter incorrect credentials" do
      it "flashes an error message" do
        visit '/login'

        fill_in "email", with: "email@example.com"
        fill_in "password", with: "not_test"
        click_button "Log In"

        expect(current_path).to eq('/dashboard')
        expect(page).to have_content("Successfully logged in")

      end
    end
  end
end
