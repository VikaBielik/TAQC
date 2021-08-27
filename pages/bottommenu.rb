class Bottommenu < BasePage

    def women
      browser.find_element(name: 'Women')
    end
  
    def Specials
      browser.find_element(name: 'Specials')
    end
  
    def New products
      browser.find_element(name: 'New products')
    end

    def Our stores
        browser.find_element(name: 'Our stores')
    end
    
    def Contact us
        browser.find_element(name: 'Contact us')
    end

    def Terms and conditions of use
        browser.find_element(name: 'Terms and conditions of use')
    end

    def About us
        browser.find_element(name: 'About us')
    end   

    def My orders
        browser.find_element(name: 'My orders')
    end

    def My credit slips
        browser.find_element(name: 'My credit slips')
    end

    def My addresses
        browser.find_element(name: 'My personal info')
    end

    def My personal info
        browser.find_element(name: 'My personal info')
    end

    def clik_on
        sign_in_button.click
      end
      
end