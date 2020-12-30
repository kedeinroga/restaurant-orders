# frozen_string_literal: true

class IngredientsController < ApplicationController
  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      redirect_to root_path @ingredient
    else
      render 'edit'
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to root_path @ingredient
    else
      render 'new'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to root_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
