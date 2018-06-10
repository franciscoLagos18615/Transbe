class Modification < ApplicationRecord
    belongs_to :contract_guard
     #Factura evento
     has_attached_file :modificacion_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
     validates_attachment_content_type :modificacion_doc, content_type: /\Aimage\/.*\z/
end
