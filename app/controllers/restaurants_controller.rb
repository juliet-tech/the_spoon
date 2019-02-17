class RestaurantsController < ApplicationController

  RESTAURANTS = {
      1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
      2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
    }

  def index
    # raise
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == params[:food_type]
      end
    end
  end

  def create
    # raise
    # RESTAURANTS[3] = {name: params[:name], address: params[:address], category: 'undefined'}
    # @restaurants = RESTAURANTS
    # redirect_to :root
  end

  def show
    # raise
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
