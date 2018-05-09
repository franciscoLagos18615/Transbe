class Guard < ApplicationRecord
    #Paperclip Configuration
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    validates :rut, rut: true
    validates :firstname, :lastname, :surname, :rut, :email, :phone_number, :nationality, :age, :address, :presence => { message: "Campo obligatorio"}
end