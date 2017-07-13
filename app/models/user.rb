# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  aprobado_login                  :string
#  email                           :string           not null
#  nombre_usuario                  :string
#  nombres                         :string
#  apellidos                       :string
#  tipo_documento                  :string
#  documento                       :string
#  registro_medico                 :string
#  rol_id                          :integer
#  crypted_password                :string
#  salt                            :string
#  created_at                      :datetime
#  updated_at                      :datetime
#  name                            :string
#  remember_me_token               :string
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#  activation_state                :string
#  activation_token                :string
#  activation_token_expires_at     :datetime
#  picture                         :string
#  failed_logins_count             :integer          default(0)
#  lock_expires_at                 :datetime
#  unlock_token                    :string
#  last_login_at                   :datetime
#  last_logout_at                  :datetime
#  last_activity_at                :datetime
#  last_login_from_ip_address      :string
#  avatar_file_name                :string
#  avatar_content_type             :string
#  avatar_file_size                :integer
#  avatar_updated_at               :datetime
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!
  acts_as_messageable
  
  has_many :notas_progreso, dependent: :destroy
  has_many :historias_clinicas, dependent: :destroy
  has_many :historia_fisicas, dependent: :destroy
  has_many :procedimientos_medicos_y_de_enfermeria

  before_save { self.email = email.downcase }
  mount_uploader :picture, PictureUploader
  belongs_to :rol


  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  PASSWORD_REGEX = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+\z/


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "220x220>" }, default_url: "/images/:style/missing.png"


  validates :nombres, :presence => {:message => ' es un Campo Obligatorio'}
  validates :apellidos, :presence => {:message => ' es un Campo Obligatorio'}
  validates :documento, :presence => {:message => ' es un Campo Obligatorio'}
  validates :rol_id, :presence => {:message => ' es un Campo Obligatorio'}
  validates :email, :presence => { :message => " es un Campo Obligatorio" }

  validates :password, :presence  => { :message => " es un Campo Obligatorio" }, :confirmation => true, :on => :update, :on => :create
  validates :password, :presence => { :message => " es un Campo Obligatorio" }, :on => :create
  validates :password,  length: { minimum: 8, :message => " no es una contraseña valida" }, :on => :create
  validates :password, confirmation: true, if: :new_user?, :on => :create

  validates :email, email_format: { message: "  No es valido" }
  validates :email, :uniqueness =>  { message: "  No es valido" }
  validates :nombre_usuario, :presence => {:message => ' es un Campo Obligatorio'}
  validates :nombre_usuario, :uniqueness => { message: "  No es valido" }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]



  def self.search(search)
    where("nombres like '%#{search}%'  or apellidos like '%#{search}%'
    or email like '%#{search}%' or documento like '%#{search}%' ")
  end




  class << self
    def current_users
      where("#{sorcery_config.last_activity_at_attribute_name} IS NOT NULL") \
      .where("#{sorcery_config.last_logout_at_attribute_name} IS NULL
      OR #{sorcery_config.last_activity_at_attribute_name} > #{sorcery_config.last_logout_at_attribute_name}") \
      .where("#{sorcery_config.last_activity_at_attribute_name} > ? ", sorcery_config.activity_timeout.seconds.ago.utc.to_s(:db))
    end
  end

  def mailboxer_email(object)
    #Check if an email should be sent for that object
      #if true
        return email
      #if false
        #return nil
    end


  private

  def new_user?
    new_record?
  end

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

end


