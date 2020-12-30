# frozen_string_literal: true

class Dish < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_and_belongs_to_many :ingredients, dependent: :destroy
end
