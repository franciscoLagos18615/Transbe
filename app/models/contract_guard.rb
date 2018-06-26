class ContractGuard < ApplicationRecord
    belongs_to :guard
    has_many :modifications

    has_attached_file :contrato_doc
    validates_attachment :contrato_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
