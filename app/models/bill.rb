class Bill < ApplicationRecord
    belongs_to :contract_installation
   
end


class Bill < ApplicationRecord
    belongs_to :contract_installation
    has_attached_file :factura_doc
    validates_attachment :factura_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
    #metodo search
    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end

end