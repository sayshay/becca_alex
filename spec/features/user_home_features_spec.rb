require_relative '../rails_helper'

feature 'User can see welcome page' do 
  scenario 'when page first loads' do 
    visit root_path
    expect(page).to have_content "Welcome"
  end  
end

feature 'User can access their profile page' do
  scenario 'when user signs in/signs up, they will be brought to their profile page' do
    user = User.create(first_name: "Joe", last_name: "Schmoe", email: "Joe@schmoe.com")
    visit "/users/#{user.id}"
    expect(page).to have_selector("h2", text: "#{user.last_name}")
  end
end

feature 'New users are able to create an account' do
  scenario 'when a user first visits the site, they can click on a link to be sent to create new user form' do
    
    
  end
  scenario 'user is able to create a new account after filling out the form' do
    
  end
end

