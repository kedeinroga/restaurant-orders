class DishesController < ApplicationController
  # GET /dishes
  def index
    @dishes = Dish.all
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to dishes_path @dish
    else
      render 'edit'
    end
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
    @dish = Dish.find(params[:id])
    @dish.destroy

    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price)
  end
end
