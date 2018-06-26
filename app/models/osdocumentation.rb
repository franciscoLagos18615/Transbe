class Osdocumentation < ApplicationRecord
    belongs_to :guard
     #Documentacion OS10
     has_attached_file :certificado_os10_doc
     validates_attachment :certificado_os10_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end