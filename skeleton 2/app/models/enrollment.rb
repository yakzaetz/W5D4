# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer
#  student_id :integer
#
class Enrollment < ApplicationRecord

    belongs_to :course,
        foreign_key: :pointer_to_course_id,
        class_name: :Course,
        primary_key: :id

    belongs_to :user,
        foreign_key: :student_id,
        class_name: :User,
        primary_key: :id    
    
end
