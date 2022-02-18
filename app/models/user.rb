class User < ActiveRecord::Base
    has_many :events
    has_many :venues, through: :events

    # def self.most_popular 
    #     self.all.max{ |u| u.events.length }
        
    # end 
    
    def total_fans
        events.pluck(:attendees).sum
    end

    def self.most_popular
        username = self.all.sort { |a, b| a.total_fans <=> b.total_fans }.last.username
        fans = self.all.sort { |a, b| a.total_fans <=> b.total_fans }.last.total_fans
        "Name: #{username} - Number of Fans: #{fans}"
    end

    def self.highest_grossing_concert
        eventsArr = self.all.map{ |u| u.events}.map{ |e| e.attendees}
        eventsArr
    end

    def earnings
        self.events.map { |event| event.attendees * event.price }.max
      end
    
      def self.popping
          username = self.all.sort { |a, b| a.earnings <=> b.earnings }.last.username
          cashmoney = self.all.sort { |a, b| a.earnings <=> b.earnings }.last.earnings
          "Name: #{username} - Highest grossing event: $#{cashmoney}"
      end

      def self.busy_beaver 
        self.all.max{|u| u.events.length}.username
      end

end

# grab all of the user's events
# get the amount of attendees times price for each event
# return the event with the highest revenue