require 'capybara/dsl'

class Registration
  include Capybara::DSL
  #page object
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'
  LAST_NAME_FIELD_ID = 'lastName'
  AGE_FIELD = '/html/body/div/form/div[3]/div/input'
  DOB_FIELD = 'dob'
  num = rand(5..6)
  GENDER_BTN = "/html/body/div/form/div[#{num}]"
  DEGREE_FIELD = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_BOX = 'inputUni'
  UNI = 'University of Oxford'
  ADDRESS_FIELD = 'inputAddress'
  CITY_FIELD = 'inputCity'
  INPUT_COUNTY = 'inputCounty'
  COUNTY = 'Hertfordshire'
  POSTCODE_FIELD = 'inputPostcode'
  EMAIL_FIELD = 'inputemailaddress'
  SKILLS_FIELD = 'exampleFormControlTextarea1'
  PHONE_FIELD ='exampleFormControlInput1'
  LINKEDIN_FIELD ='/html/body/div/form/div[17]/div/input'
  STREAM_BTN = '/html/body/div/form/div[20]/div[1]/label'
  TANDC = 'terms'
  SLIDER = 'experienceSlider'
  SIGNIN_BTN = '/html/body/div/form/button'

 

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
    find(:xpath,GENDER_BTN).click
  end

  def fill_degree_field(deg)
    find(:xpath,DEGREE_FIELD).set(deg)
  end

  def select_university
    select(UNI, :from => UNIVERSITY_BOX)
  end

  def fill_in_address_field(add)
    fill_in(ADDRESS_FIELD, :with => add)
  end

  def fill_in_city_field(city)
    fill_in(CITY_FIELD, :with => city)
  end

  def select_county
    select(COUNTY, :from => INPUT_COUNTY)
  end

  def fill_in_postcode_field(postcode)
    fill_in(POSTCODE_FIELD, :with => postcode)
  end

  def fill_in_email_field(email)
    fill_in(EMAIL_FIELD, :with => email)
  end
  
  def fill_in_skills_field(skills)
    fill_in(SKILLS_FIELD, :with => skills)
  end

  def fill_in_phone_field(phone)
    fill_in(PHONE_FIELD, :with => phone)
  end

  def fill_linkedin_field(link)
    find(:xpath,LINKEDIN_FIELD).set(link)
  end

  def check_gender_btn
    find(:xpath,STREAM_BTN).click
  end

  def check_tandc_btn
    check(TANDC)
  end

  def set_slider
    find(SLIDER).value(99)
  end

  def click_signin_btn
    find(:xpath,SIGNIN_BTN).click
  end




 

end