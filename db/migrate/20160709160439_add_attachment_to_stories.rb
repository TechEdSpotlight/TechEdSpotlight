class AddAttachmentToStories < ActiveRecord::Migration
  def change
    add_attachment :stories, :attachment
  end
end
