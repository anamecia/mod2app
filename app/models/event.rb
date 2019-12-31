class Event < ApplicationRecord
    belongs_to :host
    belongs_to :category

    has_many :bookings
    has_many :users, through: :bookings

    def self.most_popular_category
       Category.all.max_by{|category| category.events.count}.name
    end

    def self.most_expensive_event
        Event.all.max_by{|event| event.price}
    end 
end
