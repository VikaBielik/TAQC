class Bottommenu < BasePage

 #Categories
    def categories_conteiner
     browser.find_element(id: 'footer')
    end

    def women_button
        categories_conteiner.find_element(css: '.list a')
    end 

  #Information
    def button_specials
      browser.find_element(xpath: '//li[@class = "item"]/a[@title = "Specials"]')
    end

    def button_new_products
      browser.find_element(xpath: '//li[@class = "item"]/a[@title = "New products"]')
    end

    def button_best_sellers 
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "Best sellers"]')
    end

    def button_our_stores 
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "Our stories"]')
    end
    
    def button_contact_us
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "Contact us"]')
    end

    def button_terms_and_conditions_of_use
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "Terms and conditions"]')
    end

    def button_about_us
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "About us"]')
    end

 #My account

    def button_my_orders
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "My orders"]')
    end

    def button_my_credit_slips
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "My credit slips"]')
    end

    def button_my_addresses 
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "My addresses"]')
    end

    def button_personal_info 
        browser.find_element(xpath: '//li[@class = "item"]/a[@title = "Personal info"]')
    end

end


#xpath: "//a[@class='selected']"

#xpath: '//div[@class = "breadcrumb clearfix"]/span[@class = "navigation_page]' 

#xpath: '//div[@class = "breadcrumb clearfix"]/span[@class = "navigation_page]'

#xpath:"//a[contains(@class,'subcategory-name') and text()='Tops']")
    
