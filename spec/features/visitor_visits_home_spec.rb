require 'rails_helper'

describe 'Visitor visits home' do
  it 'successfully' do
    visit root_path
    expect(page).to have_link('login')
    expect(page).to have_content('overlinking')
  end
end