class Gui < ApplicationRecord
  validates :project, :description, presence: true
end
