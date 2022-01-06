# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  instructor_id :integer
#  prereq_id     :integer
#
class Course < ApplicationRecord

    belongs_to :instructor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User

    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :enrolled_students,
        through: :enrollments,
        source: :users

    belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course,
        optional: :true

    

end
