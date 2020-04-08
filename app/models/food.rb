class Food < ApplicationRecord
    mount_uploader :image, ImagesUploader

    validates :title, presence: true
    validates :date, presence: true
end
