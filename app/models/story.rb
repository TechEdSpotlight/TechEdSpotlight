class Story < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :title, :overview, :story
  validates_uniqueness_of :title
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :subjects, :computer_languages, :project_types
  has_attached_file :attachment
  validates_with AttachmentSizeValidator, attributes: :attachment, less_than: 15.megabytes
  validates_attachment :attachment, content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "application/pdf", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/vnd.openxmlformats-officedocument.presentationml.presentation"] }
end
