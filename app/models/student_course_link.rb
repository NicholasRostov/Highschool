class StudentCourseLink < ApplicationRecord
  belongs_to :course
  belongs_to :student
end
