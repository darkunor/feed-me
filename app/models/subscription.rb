class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed
  # attr_accessible :title, :body
end
