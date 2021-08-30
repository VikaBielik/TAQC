require_relative '../spec_helper'

RSpec.describe 'Bottommenu' do
  bottom = Bottommenu.new
  #bottom.woman.click
  #landing_page = LandingPage.new
  woman = WomanPage.new

  before(:all) do
    browser.get(HOME_PAGE)
  end

  after(:all) { browser.close }

  context 'when click on bottom Woman' do
    it 'verifies user click on bottom Woman redirect on woman page' do
      bottom.woman.click
      expect(WomanPage.on_page?).to be(true)
    end
  end
end
