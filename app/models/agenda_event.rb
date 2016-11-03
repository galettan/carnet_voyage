class AgendaEvent < ApplicationRecord
  belongs_to :congresses, optional: true
end
