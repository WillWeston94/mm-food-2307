class FoodsController < ApplicationController
  def index
    query = params[:q]
    @foods = FoodFacade.search_ingredients(query)
    @total_hits = FoodFacade.total_hits(query)
    # binding.pry
  end
end