class Guard < ApplicationRecord
    #has_many :bills
    has_many :sallary_settlements
    has_many :contract_guards
    has_many :vacations
    has_many :osdocumentations
    has_many :settlements
    has_and_belongs_to_many :installations
    #Paperclip Configuration
    #Avatar
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    validates :rut, rut: true
    validates :firstname, :lastname, :surname, :rut, :phone_number, :nationality, :age, :address, :presence => { message: "Campo obligatorio"}
    
    #Ficha de guardia
    has_attached_file :ficha_guardia_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :ficha_guardia_doc, content_type: /\Aimage\/.*\z/
    
    #Certificado de estudios
    has_attached_file :cert_estudio_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :cert_estudio_doc, content_type: /\Aimage\/.*\z/
    
    #Certificado de residencia
    has_attached_file :cert_residencia_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :cert_residencia_doc, content_type: /\Aimage\/.*\z/
    
    #Cedula de identidad
    has_attached_file :cedula_identidad_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :cedula_identidad_doc, content_type: /\Aimage\/.*\z/
    
    #Pacto de horas
    has_attached_file :pacto_horas_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :pacto_horas_doc, content_type: /\Aimage\/.*\z/
    
    #Certificado de antecedentes
    has_attached_file :cert_antecedentes_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :cert_antecedentes_doc, content_type: /\Aimage\/.*\z/
    
    #Credencial
    has_attached_file :credencial_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :credencial_doc, content_type: /\Aimage\/.*\z/

    #Documentos Faltantes
    

    #Derecho  a Saber
    has_attached_file :derecho_saber_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :derecho_saber_doc, content_type: /\Aimage\/.*\z/

    #EPP entrega
    has_attached_file :epp_entrega_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :epp_entrega_doc, content_type: /\Aimage\/.*\z/

    #EPP recibo
    has_attached_file :epp_recibo_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :epp_recibo_doc, content_type: /\Aimage\/.*\z/


    #Autorizacion de turno
    has_attached_file :auth_turno_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :auth_turno_doc, content_type: /\Aimage\/.*\z/

    #Reglamento interno
    has_attached_file :reg_interno_doc, styles: { medium: "800x1200#", thumb: "800x1200#" }, default_url: "/images/:style/file-add-icon.png"
    validates_attachment_content_type :reg_interno_doc, content_type: /\Aimage\/.*\z/
    
    def self.search search_term
        return all unless search_term.present? 
        where(['rut LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end
end