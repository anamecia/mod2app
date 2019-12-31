class Host < ApplicationRecord
    has_many :events 
    has_secure_password

    def self.most_popular_host
        if Booking.all.count >0 
        hash = {}
        Booking.all.map{|booking|booking.event_id}.uniq.each{|item|hash[item]=0}
        Booking.all.each{|booking|
            hash[booking.event_id] += booking.ticket
        }
        result = hash.max_by{|k,v|v}
        Event.find(result[0]).host.hostname
        else
            return 0
        end

    end

    def self.inactive_hosts
        result =   Host.all.filter{|host|host.events == []}
    end
end
