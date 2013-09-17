require 'spec_helper'

feature "admin deletes inquiry" do %Q{
As an admin
I want to delete an inquiry
So that I can remove spam or other undesirable inquiries
}

scenario "deletes contact inquiries" do
  FactoryGirl.create(:contact)
  visit '/'
  save_and_open_page
  click_link 'Destroy'
  expect(Contact.count).to eql(0)
  end
 end
