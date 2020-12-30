class DishesController < ApplicationController
  # GET /dishes
  def index
    @dishes = Dish.all
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def destroy
  end
end
