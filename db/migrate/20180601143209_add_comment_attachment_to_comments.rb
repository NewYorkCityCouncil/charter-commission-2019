class AddCommentAttachmentToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :comment_attachment, :string
  end
end
