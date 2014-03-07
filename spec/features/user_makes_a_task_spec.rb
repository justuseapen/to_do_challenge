require "spec_helper"

feature "user adds task to to-do list" do
  before :each do
    visit root_path
  end
  scenario "task is valid" do
    fill_in "New Task", with: "Watch last 8 episodes of Breaking Bad"
    click_button "Submit"
    expect(page).to have_content("Task successfully added!")
  end
  scenario "task is invalid" do
    click_button "Submit"
    expect(page).to have_content("cannot be blank")
  end
end