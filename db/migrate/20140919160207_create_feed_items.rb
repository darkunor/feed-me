class CreateFeedItems < ActiveRecord::Migration
  def change
    create_table :feed_items do |t|
      t.string :title
      t.string :description
      t.string :link
      t.datetime :published_on
      t.string :guid

      t.timestamps
    end
    add_index :feed_items, [:title, :description], unique: true
  end
end
