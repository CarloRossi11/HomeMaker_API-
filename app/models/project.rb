class Project < ApplicationRecord
    has_many :ledgers
    has_many :resources, through: :ledgers
end
