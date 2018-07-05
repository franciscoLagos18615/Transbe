class Settlement < ApplicationRecord
    belongs_to :guard
    
end

class Settlement < ApplicationRecord
    belongs_to :guard
    has_attached_file :finiquito_doc , default_url: "/images/:style/file-add-icon.png"
    validates_attachment :finiquito_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
    #metodo search
    def self.search search_term
        return all unless search_term.present? 
        where(['name LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end

end
