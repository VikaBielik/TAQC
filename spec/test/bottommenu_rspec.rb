require_relative '../spec_helper'

RSpec.describe 'Bottommenu' do
  woman_page = LandingPage.new
 
  before(:all) do
    browser.get(HOME_PAGE)
    landing_page.sign_in_button.click
  end

  after(:all) { browser.close }

  end
end