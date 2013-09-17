require 'spec_helper'


feature "as an admin review contacts", %Q{
As an admin
I want to review contact inquiries
So that I can respond or take action
} do

scenario 'view a list of contact inquiries' do

  visit new_contact_path
  expect(Contact.count).to eql(0)
  end
end

