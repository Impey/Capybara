require 'capybara/dsl'

class Registration
  include Capybara::DSL

  #page object
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD = '/html/body/div/form/div[3]/div/input'
  DOB_FIELD = 'dob'
  GENDER_BTN = '/html/body/div/form/div[6]/label/text()'

 

  def vist_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def fill_in_last_name_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def fill_age_field(age)
   find(:xpath,'/html/body/div/form/div[3]/div/input').set(age)
  end

  def fill_dob_field(dob)
   fill_in(DOB_FIELD, :with => dob)
  end

  def check_gender_btn
    num = rand(5..6)
    find(:xpath,"/html/body/div/form/div[#{num}]/label").click
  end


 

end