class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.text :url
      t.integer :interval_seconds
      t.datetime :last_fetched_at
      t.boolean :should_fetch, default: true
      t.boolean :should_show, default: true

      t.timestamps
    end
  end
end
