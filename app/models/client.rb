# frozen_string_literal: true

class Client < ApplicationRecord
  has_and_belongs_to_many :orders, dependent: :destroy
end
