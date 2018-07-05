class SallarySettlement < ApplicationRecord
    belongs_to :guard
end

class SallarySettlement < ApplicationRecord
    belongs_to :guard
    has_attached_file :liquidacion_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :liquidacion_doc, content_type: /\Aimage\/.*\z/
    #metodo search
    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end
end
