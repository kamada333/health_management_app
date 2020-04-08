class Health < ApplicationRecord
    validates :body_weight, presence: true
    validates :condition, presence: true
end
