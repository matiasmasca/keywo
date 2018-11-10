class Collaborator < ApplicationRecord
  belongs_to :city
  belongs_to :zone
  belongs_to :skill
end
