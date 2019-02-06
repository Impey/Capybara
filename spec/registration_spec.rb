require 'spec_helper'

describe 'testing a correct path for sparta registration' do 
  context 'It should respond with confirmation on successful completeion'

 it 'should show correct confirmation on completion' do
   @sparta_demo_site = SpartaDemoSite.new
   @sparta_demo_site.registration_page.vist_registration_page
   @sparta_demo_site.registration_page.fill_in_name_field('Tom')
   sleep 5
  end

end



