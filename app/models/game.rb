class Game < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :point

  validates :category_id, numericality: { other_than: 1 } 
  validates :point_id, numericality: { other_than: 1 } 

end
