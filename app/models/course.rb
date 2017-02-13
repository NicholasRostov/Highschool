class Course < ApplicationRecord
  has_many :student_course_links
  has_many :students, through: :student_course_links
end
