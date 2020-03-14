class Food < ApplicationRecord
    mount_uploader :image, ImagesUploader
end
