class Hearing < ApplicationRecord

  mount_uploaders :hearing_attachments, HearingAttachmentUploader
  require 'carrierwave/orm/activerecord'
end
