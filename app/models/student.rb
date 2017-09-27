class Student < ApplicationRecord
  has_many :student_course
  has_many :course, through: :student_course
end
