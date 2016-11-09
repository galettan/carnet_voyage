class BreakingInfo < ApplicationRecord
  belongs_to :congress, optional: true
end
