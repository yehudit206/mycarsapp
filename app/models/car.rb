class Car < ApplicationRecord
    validates :title, presence: true
    has_many :links
    has_many :drivers, through: :links
end

