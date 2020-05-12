class Item < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :images, dependent: :destroy, inverse_of: :item
  accepts_nested_attributes_for :images, allow_destroy: true
end
