class Installation < ApplicationRecord
    has_many :contract_intallations
    has_and_belongs_to_many :guards
end
