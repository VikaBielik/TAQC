class Bottommenu < BasePage

 #Categories
    def women
     browser.find_element(id: 'footer')
     #xpath: "//a[@class='selected']"
    end

    #def women_botton
    # browser.find_element(id: 'footer') 
    #end 

  #Information
    def specials
      browser.find_element(name: 'Specials')
    end
  
    def new_products
      browser.find_element(name: 'New products')
    end

    def our_stores
        browser.find_element(name: 'Our stores')
    end
    
    def contact_us
        browser.find_element(name: 'Contact us')
    end

    def terms_and_conditions_of_use
        browser.find_element(name: 'Terms and conditions of use')
    end

    def about_us
        browser.find_element(name: 'About us')
    end   
 #My account
    def my_orders
        browser.find_element(name: 'My orders')
    end

    def my_credit_slips
        browser.find_element(name: 'My credit slips')
    end

    def my_addresses
        browser.find_element(name: 'My addresses')
    end

    def my_personal_info
        browser.find_element(name: 'My personal info')
    end
    
    #def botton.click
        #browser.find_element(xpath: "//a[@class='selected']")
      #end
end