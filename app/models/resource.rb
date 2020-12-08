class Resource < ApplicationRecord
    has_many :ledgers
    has_many :projects, through: :ledgers
end
