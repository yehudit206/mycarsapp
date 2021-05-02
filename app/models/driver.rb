class Driver < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    has_many :links
    has_many :cars, through: :links
end
