class Congress < ApplicationRecord
  has_many :hotels
  has_many :agenda_events, autosave: true

  accepts_nested_attributes_for :hotels
end
