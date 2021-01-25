require 'spec_helper'

feature 'Visit The-Internet Home Page' do
  background do
    visit '/'
  end

  scenario 'Take Screenshot: Welcome to the-internet' do
    expect(page).to have_content('Welcome to the-internet')
    screenshot_name = "screenshot_" + Time.now.to_s
    save_screenshot("../screenshots/#{screenshot_name}.png")
  end

  
end
