class Settlement < ApplicationRecord
    belongs_to :guard
    has_attached_file :finiquito_doc
    validates_attachment :finiquito_doc, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
