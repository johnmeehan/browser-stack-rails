require 'rails_helper'

feature 'Blog spec' do
  let!(:blog) { FactoryGirl.create :blog }
  scenario 'view blogs' do
    visit root_path
    expect(page).to have_content 'Listing blogs'
    expect(page).to have_content blog.title
    expect(page).to have_link 'New Blog'
  end
end

feature 'New Blog' do
  scenario 'create a new blog' do
    visit '/'
    click_link 'New Blog'
    fill_in 'Title', with: 'New Title'
    fill_in 'Body', with: 'New Body'
    fill_in 'Author', with: 'New Author'
    click_button 'Save'

    expect(page).to have_content 'Blog was successfully created.'
  end
end