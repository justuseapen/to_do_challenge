require 'spec_helper'


feature "User Completes Tasks" do
  let!(:task) { FactoryGirl.create(:task) }
  scenario "one down!" do
    visit root_path
    save_and_open_page
    click_link "Done"
    expect(page).to have_content("Task completed!")
  end
end
