# frozen_string_literal: true

class IngredientsController < ApplicationController
  def edit; end

  def update; end

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

  def destroy; end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
