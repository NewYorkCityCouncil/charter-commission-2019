class Hearing < ApplicationRecord

  mount_uploaders :hearing_attachments, HearingAttachmentUploader
  require 'carrierwave/orm/activerecord'
  before_save :nil_out

  def nil_out
    self.attributes.each do |k,v|
      if self[k].blank? 
        self[k] = nil
      end
    end
  end
end
