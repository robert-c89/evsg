class Page < ActiveRecord::Base
  belongs_to  :chapter

  mount_uploader  :image, ComicUploader
end
