require 'minitest/autorun'
require_relative 'student'

class StudentTest < Minitest::Test
# insert a test here for the finding the correct student for id 300
    def test_find_correct_student
        assert_equal 300, get_student_id(2)
    end
# insert a test here for returning "Not Found" for student with id 800
    def test_return_not_found
        assert_equal "Not Found", get_student_name_for_id(800) 
    end
# insert a test here for finding the correct student name for array position 0
    def test_find_student_name_by_array
        assert_equal "Fred", get_student_name(0)
    end
end