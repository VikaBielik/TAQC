require_relative '../spec_helper'


RSpec.describe 'Bottommenu' do
   landing_page = LandingPage.new
   botton = Bottommenu.new
   
    before(:all) do
    browser.get(HOME_PAGE)
    
  end

  after(:all) { browser.close }

  context 'Verify upon clicking category user is redirected to page' do 

    it 'verifies open Women page' do
  
      botton.women_button.click
      expect(botton.url_include?('id_category=3&controller=category')).to be(true)

    end

    it 'verifies open New product page' do 
  
      botton.button_new_products.click
      expect(botton.new_products.text) == 'New products'

    end
    it 'verifies open Special page ' do
      
      botton.button_spesial.click
      expect(botton.specials.text) == 'Price drop'

    end
  end

  context 'UI bottom check'

    it 'verifies that Women button is displayed' do
      expect(botton.women_button.displayed?).to be(true)
    end 
    
    it 'verifies that Specials button is displayed' do
      expect(botton.specials_button.displayed?).to be(true)
    end

    it 'verifies that New products button is displayed' do
      expect(botton.new_products_button.displayed?).to be(true)
    end

    it 'verifies that Best sellers button is displayed' do
      expect(botton.best_sellers_button.displayed?).to be(true)
    end 

    it 'verifies that Contact_us_button is displayed' do
      expect(botton.contact_us_button.displayed?).to be(true)
    end 

    it 'verifies that Our stores button is displayed' do
      expect(botton.our_stores_button.displayed?).to be(true)
    end 

    it 'verifies that Terms and conditions of use button is displayed' do
       expect(botton.terms_and_conditions_of_use_button.displayed?).to be(true)
    end

    it 'verifies that About_us button is displayed' do
      expect(botton.about_us_button.displayed?).to be(true)
    end

    it 'verifies that Sitemap button is displayed' do
      expect(botton.sitemap_button.displayed?).to be(true)
    end

    it 'verifies that My orders is displayed' do
      expect(botton.my_orders_button.displayed?).to be(true)
    end

    it 'verifies that My credit slips button is displayed' do
      expect(botton.my_credit_slips_button.displayed?).to be(true)
    end

    it 'verifies that My adresses button is displayed' do
      expect(botton.my_adreses_button.displayed?).to be(true)
    end

    it 'verifies that My personal info button is displayed' do
      expect(botton.my_personal_info_button.displayed?).to be(true)
    end
  end


#rspec spec/test/bottommenu_spec.rb  --color --format doc 