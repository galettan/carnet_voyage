class Hotel < ApplicationRecord
  belongs_to :congress, optional: true
  has_many :hotel_various_infos, autosave: true

  accepts_nested_attributes_for :hotel_various_infos
end
