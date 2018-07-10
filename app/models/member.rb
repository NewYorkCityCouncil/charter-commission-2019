class Member < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true
  validates :order, presence: true, numericality: { only_integer: true }
  mount_uploader :profile_pic, MemberPicUploader
  require 'carrierwave/orm/activerecord'
  before_save :update_url, :nil_out

  def nil_out
    self.attributes.each do |k,v|
      if self[k].blank? 
        self[k] = nil
      end
    end
  end

  def update_url
    self.image_url = self.profile_pic_identifier
  end
end
