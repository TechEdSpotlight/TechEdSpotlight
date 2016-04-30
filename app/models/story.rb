class Story < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :title, :overview, :story
  validates_uniqueness_of :title
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :subjects, :computer_languages, :project_types
end
