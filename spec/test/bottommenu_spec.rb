require_relative '../spec_helper'
#require_relative '../pages/base_page'

RSpec.describe 'Bottommenu' do
   landing_page = LandingPage.new
   botton = Bottommenu.new
   
    before(:all) do
    browser.get(HOME_PAGE)
    landing_page.women_botton.click
  end

  after(:all) { browser.close }

  context 'when click on bottom Women on page' do
    it 'verifies upon clicking Women category user is redirected to Women page' do
      expect(WomanPage.on_page?).to be (true)
    end
  end
end


#rspec spec/test/bottommenu_spec.rb  --color --format doc