require 'spec_helper'

feature "User Deletes Task" do
  let!(:task) { FactoryGirl.create(:task) }
  scenario "User is no longer interested in completing task" do
    visit root_path
    click_link "Delete"
    expect(page).to_not have_content(task.title)
  end
end
