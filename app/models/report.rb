class Report < ApplicationRecord

  mount_uploaders :report_attachments, ReportAttachmentUploader
  require 'carrierwave/orm/activerecord'
end
