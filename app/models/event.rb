class Event < ApplicationRecord
    belongs_to :host
    belongs_to :category

    has_many :bookings
    has_many :users, through: :bookings
end
