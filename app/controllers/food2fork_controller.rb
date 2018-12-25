class Food2forkController < ApplicationController

    def index
        term = params[:for] || "chocolate"
        @recepies = Food2fork.for(term)
    end
    
end
