class Genre < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  validates :name, presence: true, uniqueness: true
end
