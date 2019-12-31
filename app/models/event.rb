class Event < ApplicationRecord
    belongs_to :host
    belongs_to :category

    has_many :bookings
    has_many :users, through: :bookings

    def self.most_popular_category
        # Event.all.max_by(:category_id)
    end
end
