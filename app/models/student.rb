class Student
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def all_tests
        BoatingTest.all.select{|test| test.student == self}
    end

    def all_instructors
        self.all_tests.map {|test|test.instructor}.uniq
    end

    def self.find_student(name)
        self.class.all.find {|student|student.name == name}
    end

    def grade_percentage
        (self.all_tests.select{|t|t.status == "passed"}.count.to_f / self.all_tests.count.to_f)*100.00
    end





    






end
