class Person < ApplicationRecord
  attr_accessor :blank_msg
  attr_accessor :unique_msg

  @blank_msg = "No puede estar vacío"
  @unique_msg = "existente"

  validates :nombre,presence: {message: @blank_msg}
  validates :apellido,presence: {message: @blank_msg}
  validates :cedula,presence: {message: @blank_msg},uniqueness: {message: "Cédula #{@unique_msg}"}
  validates_email_format_of :correoElectronico
  validates_email :correoElectronico
  validates :correoElectronico,presence: {message: @blank_msg}, uniqueness: {message: "Email #{@unique_msg}"}

  has_attached_file :photo, :styles => { :medium => "300x300>",:thumb => "100x100>" }, default_url: "https://www.svgimages.com/svg-image/s5/man-passportsize-silhouette-icon-256x256.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
