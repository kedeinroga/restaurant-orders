class Order < ApplicationRecord
  belongs_to :dish
  has_and_belongs_to_many :clients, dependent: :destroy
end
