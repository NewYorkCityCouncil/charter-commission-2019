class News < ApplicationRecord
  validates :title, presence: true
  validates :publication_date, presence: true
  validates :news_content, presence: true
  validates :order, presence: true

  mount_uploaders :news_attachments, NewsAttachmentUploader
  require 'carrierwave/orm/activerecord'
end
