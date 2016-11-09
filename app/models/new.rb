class New < ApplicationRecord
  belongs_to :congress, optional: true
end
