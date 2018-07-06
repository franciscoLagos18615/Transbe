class Osdocumentation < ApplicationRecord
    belongs_to :guard
     #Documentacion OS10
     has_attached_file :certificado_os10_doc
     validates_attachment :certificado_os10_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end

class Osdocumentation < ApplicationRecord
    belongs_to :guard
    has_attached_file :certificado_os10_doc , default_url: "/images/:style/file-add-icon.png"
    validates_attachment :certificado_os10_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
    #metodo search
    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end

end