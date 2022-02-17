class User < ActiveRecord::Base
    has_many :events
    has_many :venues, through: :events

    # def self.most_popular 
    #     self.all.max{ |u| u.events.length }
        
    # end 
    
    def total_fans
        events.pluck(:attendees).sum
    end

    def self.popular
        self.all.sort { |a, b| a.total_fans <=> b.total_fans }.last
    end

end