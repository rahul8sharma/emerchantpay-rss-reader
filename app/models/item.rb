class Item < ApplicationRecord
  belongs_to :feed

  scope :visible, -> { joins(:feed).where('feeds.should_show' => true)  }
end
