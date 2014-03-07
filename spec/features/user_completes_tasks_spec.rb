require 'spec_helper'

feature "User Completes Tasks" do
  let!(:task) { FactoryGirl.create(:task) }
  scenario "one down!" do
    visit root_path
    click_link "Complete!"
    expect(page).to have_content("Task completed!")
  end
end
