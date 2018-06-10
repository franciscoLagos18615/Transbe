class ContractGuard < ApplicationRecord
    belongs_to :guard
    has_many :modifications
end
