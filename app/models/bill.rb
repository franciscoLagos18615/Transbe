class Bill < ApplicationRecord
    belongs_to :contract_installation
    has_attached_file :factura_doc
    validates_attachment :factura_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
