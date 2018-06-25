class Comment < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true
  validates :address, absence: true
  validates :cell, absence: true
  validates :phone, absence: true
  mount_uploader :comment_attachment, CommentAttachmentUploader
  require 'carrierwave/orm/activerecord'

  # validates_integrity_of :comment_attachment, file_size: { less_than: 7.megabytes }

  def self.to_csv
    attributes = %w{Name Email Message Comment_Attachment Address Cell Phone}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |comment|
        csv << attributes.map{ |attr| comment.send(attr.downcase) }
      end
    end
  end

end
