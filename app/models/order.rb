class Order < ApplicationRecord
  enum status: [:billing, :shipping, :confirmed]
end
