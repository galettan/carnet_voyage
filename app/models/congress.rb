class Congress < ApplicationRecord
  has_many :hotels
  has_many :agenda_events
  has_many :congress_infos
  has_many :news

  accepts_nested_attributes_for :hotels, :agenda_events, :congress_infos, :news
end
