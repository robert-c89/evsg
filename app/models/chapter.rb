class Chapter < ActiveRecord::Base
  has_many  :pages

  mount_uploader  :image, CoverUploader
end
