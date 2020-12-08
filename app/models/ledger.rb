class Ledger < ApplicationRecord
  belongs_to :project
  belongs_to :resource
end
