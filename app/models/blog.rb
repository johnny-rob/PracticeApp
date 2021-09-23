class Blog < ApplicationRecord
  mount_uploader :main_image, BlogsUploader
end
