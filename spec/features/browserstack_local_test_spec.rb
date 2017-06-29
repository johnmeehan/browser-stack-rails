require 'rails_helper'

feature "BrowserStack Local Testing" do
  scenario "can check tunnel working" do
    visit "http://bs-local.com:45691/check"
    expect(page).to have_content(/Up and running/)
  end
end