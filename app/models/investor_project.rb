class InvestorProject < ApplicationRecord
  belongs_to :project
  belongs_to :investor
end
