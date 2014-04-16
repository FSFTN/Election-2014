class Party < ActiveRecord::Base
  has_many :candidates, dependent: :destroy
  mount_uploader :symbol, AvatarUploader

  validates_presence_of :name

end
