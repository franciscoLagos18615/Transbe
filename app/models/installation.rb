class Installation < ApplicationRecord
    has_many :contract_intallations
    has_many :events
    has_and_belongs_to_many :guards

    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end
end
