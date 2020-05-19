require 'rails_helper'

RSpec.describe 'As a user searching for house members' do
  it 'should show order of the pheonix members' do
    visit '/'
    select "Gryffindor", from: :house
    click_on "Search For Members"
    expect(current_path).to eq('/search')

    expect(page).to have_content("Number of Order of the Pheonix Memebers for Gryffindor: 21")
    expect(page).to have_content("Name: Aberforth Dumbledore")
    expect(page).to have_content("House: Gryffindor")
    expect(page).to have_content("Role: Owner, Hog's Head Inn")
    expect(page).to have_content("Patronus: goat")
  end
end
