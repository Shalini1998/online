class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

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

end