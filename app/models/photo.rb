class Photo < ApplicationRecord
  belongs_to :place
  mount_uploader :picture, PictureUploader
end
