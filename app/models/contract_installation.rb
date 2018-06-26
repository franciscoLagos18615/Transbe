class ContractInstallation < ApplicationRecord
    belongs_to :installation
end
class ContractInstallation < ApplicationRecord
    belongs_to :installation
    has_many :bills

    has_attached_file :contrato_de_instalacion_doc
    validates_attachment :contrato_de_instalacion_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end