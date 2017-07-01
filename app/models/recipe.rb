class Recipe < ApplicationRecord
  has_many  :ingredients
  has_many  :directions
  validates  :title, :description, :image, presence: true
  
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
  mount_uploader :image, ImageUploader
end
