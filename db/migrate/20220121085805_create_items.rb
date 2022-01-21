class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :link
      t.text :description
      t.date :pub_date
      t.text :title
      t.datetime :pub_date
      t.text :json
      t.references :feed

      t.timestamps
    end
  end
end
