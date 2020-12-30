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
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to dishes_path @dish
    else
      render 'new'
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def destroy
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price)
  end
end
