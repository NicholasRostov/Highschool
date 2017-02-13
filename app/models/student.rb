class Student < ApplicationRecord
  has_many :student_course_links
  has_many :courses, through: :student_course_links
end
