class Event < ApplicationRecord
    belongs_to :installation

    #Factura evento
    has_attached_file :factura_evento_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :factura_evento_doc, content_type: /\Aimage\/.*\z/
end
