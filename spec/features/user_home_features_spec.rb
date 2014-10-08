require_relative '../rails_helper'

feature 'User can see welcome page' do 
  scenario 'when page first loads' do 
    visit root_path
    expect(page).to have_content "Welcome"
  end  
end
