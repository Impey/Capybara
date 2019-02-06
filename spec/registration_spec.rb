require 'spec_helper'

describe 'testing a correct path for sparta registration' do 
  context 'It should respond with confirmation on successful completeion'

 it 'should show correct confirmation on completion' do
   @sparta_demo_site = SpartaDemoSite.new
   @sparta_demo_site.registration_page.vist_registration_page
   @sparta_demo_site.registration_page.fill_in_name_field('Tom')
   @sparta_demo_site.registration_page.fill_in_last_name_field('Impey')
   @sparta_demo_site.registration_page.fill_age_field(25)
   @sparta_demo_site.registration_page.fill_dob_field("11/10/2019")
   @sparta_demo_site.registration_page.check_gender_btn
   @sparta_demo_site.registration_page.fill_degree_field('Computing')
   @sparta_demo_site.registration_page.select_university
   sleep 10
  end

end



