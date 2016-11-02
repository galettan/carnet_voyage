class Congress < ApplicationRecord
  has_many :hotels, autosave: true
  has_many :agenda_events, autosave: true
end
