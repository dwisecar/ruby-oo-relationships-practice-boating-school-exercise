class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_test(student, test_name, status)
        BoatingTest.new(student, test_name, status, self)
    end

    def all_tests
        BoatingTest.all.select {|t|t.instructor == self}
    end 

    def passed_students
        self.all_tests.select {|t|t.status == "passed"}.map {|t|t.student}
    end

    def change_grade(status, test_name, student_name)
        student_test = self.all_tests.find{|test|test.student.name == student_name && test.name == test_name}
        if student_test
            student_test.status = status
            student_test
        else
            student = Student.all.find {|s|s.name == student_name}
            BoatingTest.new(student, test_name, status, self)
        end
    end
    
    def pass_student(student_name, test_name)
        self.change_grade("passed", test_name, student_name)
    end

    def fail_student(student_name, test_name)
        self.change_grade("failed", test_name, student_name)
    end

    
end
