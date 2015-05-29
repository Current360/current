class Quote < ActiveRecord::Base

    def self.homePageQuote
        id = Quote.pluck(:id).shuffle.sample
        @quote = Quote.find(id)
    end
end
