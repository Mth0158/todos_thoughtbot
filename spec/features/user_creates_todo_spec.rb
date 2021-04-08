require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    fill_in 'Name', with: 'Buy milk'
    click_button 'Submit'

    expect(page).to have_css '.todos li', text: 'Buy milk'
  end
end
