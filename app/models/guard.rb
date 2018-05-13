class Guard < ApplicationRecord
    #Paperclip Configuration
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    validates :rut, rut: true
    validates :firstname, :lastname, :surname, :rut, :email, :phone_number, :nationality, :age, :address, :presence => { message: "Campo obligatorio"}

    def self.search search_term
        return all unless search_term.present? 
        where(['rut LIKE ?', "%#{search_term}%"]) #project_name means the column name, change it to the correct name.
      end
end