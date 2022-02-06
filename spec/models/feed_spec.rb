require 'rails_helper'

RSpec.describe Feed, type: :model do
  it { should have_many(:items) }
  it { is_expected.to validate_presence_of(:url) }
  it { is_expected.to validate_uniqueness_of(:url) }

  it '#to_s' do
    feed = build(:feed)

    expect(feed.to_s).to eql(feed.url)
  end
end
