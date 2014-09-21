class FeedItem < ActiveRecord::Base
  attr_accessible :description, :guid, :link, :published_on, :title
  # OPTIMIZE: I want, "validate :presence_of_any_in, [:title, :description]" - check out http://stackoverflow.com/a/6169292
  validates :title, presence: true, unless: ->(feed_item){feed_item.description.present?}
  validates :description, presence: true, unless: ->(feed_item){feed_item.title.present?}
end
