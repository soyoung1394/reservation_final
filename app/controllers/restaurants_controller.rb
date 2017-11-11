class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = Comment.new
  end

  def index
    @restaurants = Restaurant.page(params[:page]).per(9)
  end
  
  def create
    
  end
end
