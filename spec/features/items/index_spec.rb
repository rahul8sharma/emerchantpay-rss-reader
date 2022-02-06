require 'rails_helper'

RSpec.describe 'Item Index', type: :feature do
  scenario 'valid feeds count' do
    3.times { |index| create(:item, title: "title#{index}") }

    visit items_path
    expect(page).to have_content("Visible Feeds Count: #{Item.count}")
  end

  scenario 'valid feeds pagination count' do
    3.times { |index| create(:item, title: "title#{index}") }

    visit items_path(page: 1)
    expect(page).to have_content("Visible Feeds Count: #{Item.limit(10).count}")
    expect(current_url).to have_content("/items?page=1")
  end

  scenario 'valid title' do
    3.times { |index| create(:item, title: "title#{index}") }

    visit items_path

    expect(page).to have_content('title0')
    expect(page).to have_content('title1')
    expect(page).to have_content('title2')
  end

  scenario 'valid show page' do
    item = create(:item, title: 'title', pub_date: DateTime.now)

    visit item_path(item)
    expect(page).to have_content(item.title)
  end
end