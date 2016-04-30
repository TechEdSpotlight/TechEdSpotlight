class Story < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :title, :overview, :story
  validates_uniqueness_of :title
end
