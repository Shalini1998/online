class Course < ApplicationRecord
  has_many :student_course
  has_many :students, through: :student_course
end
