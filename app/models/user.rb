class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  geocoded_by :address   
  after_validation :geocode          
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
   mount_uploader :image, ImageUploader
  ROLES = %w[admin developer trainee student].freeze

  has_many :tasks

  def admin?
    self.role == "admin"
  end

  def developer?
    self.role == "developer"
  end

  def trainee?
    self.role == "trainee"
  end

  def student?
    self.role == "student"
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

end