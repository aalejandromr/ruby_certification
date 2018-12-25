require 'httparty'

class Food2fork
    include HTTParty
    
    base_uri 'http://food2fork.com/api'
    default_params key: ENV['FOOD2FORK_KEY']
    format :json
    
    class << self
        def for(term)
            get("/search", query: { q: term })["recipes"]
        end
    end
end
