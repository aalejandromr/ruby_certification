class RecipiesController < ApplicationController

    def index
        term = params[:search] || "chocolate"
        @recipies = Recipe.for(term)
    end

end
