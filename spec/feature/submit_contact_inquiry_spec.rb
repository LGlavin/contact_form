require 'spec_helper'

feature "user submits contact inquiry", %Q{
As a site visitor
I want to contact DogHub staff
So that I can tell them how awesome they are
} do
 
scenario 'specifies valid information submits contact inquiry' do
  prev_count = Contact.count
  visit new_contact_path
  fill_in 'First name', with: 'Liz'
  fill_in 'Last name', with: 'Glavin'
  fill_in 'Email', with: 'user@example.com'
  fill_in 'Subject', with: 'awesome'
  fill_in 'Description', with: 'I think your awesome'
  click_button 'Contact'
  expect(page).to have_content('You will hear from us shortly!')
  expect(Contact.count).to eql(prev_count + 1)
  end
end