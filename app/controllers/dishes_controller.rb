# frozen_string_literal: true

class DishesController < ApplicationController
  # GET /dishes
  def index
    @dishes = Dish.all
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    new_params = dish_params.reject { |c, _v| c == "ingredient_id" }
    @dish = Dish.find(params[:id])
    @ingredient_id = dish_params["ingredient_id"]
    @ingredient = Ingredient.find(@ingredient_id)
    @dish.ingredients << @ingredient
    if @dish.update(new_params)
      redirect_to dishes_path @dish
    else
      render 'edit'
    end
  end

  def new
    @dish = Dish.new
  end

  def create
    new_params = dish_params.reject { |c, _v| c == "ingredient_id" }
    @dish = Dish.new(new_params)   
    @ingredient_id = dish_params["ingredient_id"]
    @ingredient = Ingredient.find(@ingredient_id)
    @dish.ingredients << @ingredient
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
    params.require(:dish).permit( :name, :price, ingredient_id: [] )
  end
end
