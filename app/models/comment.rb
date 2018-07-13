class Comment < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true, length: { maximum: 5000 }
  validates :address, absence: true
  validates :cell, absence: true
  validates :phone, absence: true
  mount_uploader :comment_attachment, CommentAttachmentUploader
  require 'carrierwave/orm/activerecord'

  # validates_integrity_of :comment_attachment, file_size: { less_than: 7.megabytes }

  def self.to_csv
    attributes = %w{Name Email Borough Message Comment_Attachment}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |comment|
        csv << attributes.map{ |attr| comment.send(attr.downcase) }
      end
    end
  end

end
