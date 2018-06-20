class Settlement < ApplicationRecord
    belongs_to :guard

    has_attached_file :finiquito_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :finiquito_doc, content_type: /\Aimage\/.*\z/
end
