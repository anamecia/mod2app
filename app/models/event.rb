class Event < ApplicationRecord
    belongs_to :host
    belongs_to :category

    has_many :bookings
    has_many :users, through: :bookings

    validates :title, :description, :category_id, :price, :time, :date, :places, {presence:true}
    validate :future_date?


    def future_date?
        unless date > Time.now
            errors.add(:date, 'date must be in the future')
        end
    end 


    def self.most_popular_category
       Category.all.max_by{|category| category.events.count}.name
    end

    def self.most_expensive_event
        Event.all.max_by{|event| event.price}
    end 
end
