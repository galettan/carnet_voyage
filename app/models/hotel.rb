class Hotel < ApplicationRecord
  belongs_to :congress
  has_many :hotel_various_infos, autosave: true
end
