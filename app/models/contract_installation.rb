class ContractInstallation < ApplicationRecord
    belongs_to :installation
end
class ContractInstallation < ApplicationRecord
    belongs_to :installation
    has_many :bills

    has_attached_file :contrato_de_instalacion_doc
    validates_attachment :contrato_de_instalacion_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end

end