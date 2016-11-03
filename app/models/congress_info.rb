class CongressInfo < ApplicationRecord
  belongs_to :congress, optional: true
end
