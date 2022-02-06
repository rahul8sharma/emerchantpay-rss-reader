require 'rails_helper'

RSpec.describe 'Item Show', type: :feature do
  scenario 'valid show page' do
    item = create(:item, title: 'title', pub_date: DateTime.now)

    visit item_path(item)
    expect(page).to have_content(item.title)
  end

  scenario 'valid title, description, link and publish date' do
    item = create(:item,
           title: 'title',
           description: 'Hello World!',
           link: 'https://timesofindia.indiatimes.com/rssfeeds/-2128936835.cms',
           pub_date: DateTime.now
    )

    visit item_path(item)
    expect(page).to have_content(item.title)
    expect(page).to have_content(item.description)
    expect(page).to have_content(item.link)
    expect(page).to have_content(item.pub_date.strftime("%B %d, %Y"))
  end
end