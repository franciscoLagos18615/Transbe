class Osdocumentation < ApplicationRecord
    belongs_to :guard
     #Documentacion OS10
     has_attached_file :certificado_os10_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
     validates_attachment_content_type :certificado_os10_doc, content_type: /\Aimage\/.*\z/
end