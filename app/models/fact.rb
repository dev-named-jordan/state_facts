class Fact < ApplicationRecord
  validates_presence_of :title,
                        :details,
                        :lat,
                        :lng,
                        :state_id

  belongs_to :state
end
