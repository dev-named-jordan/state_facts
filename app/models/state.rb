class State < ApplicationRecord
  validates_presence_of :name,
                        :description,
                        :flag_image,
                        :captitol_name,
                        :population

  has_many :facts, dependent: :destroy
end
