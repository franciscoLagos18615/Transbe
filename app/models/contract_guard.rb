class ContractGuard < ApplicationRecord
    belongs_to :guard
    has_many :modifications

   # has_attached_file :contrato_doc
   # validates_attachment :contrato_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
class ContractGuard < ApplicationRecord
    belongs_to :guard
    has_many :modifications
    has_attached_file :contrato_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :contrato_doc, content_type: /\Aimage\/.*\z/
    #metodo search
    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end
end