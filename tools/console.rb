require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Spongebob")
s2 = Student.new("Patrick")
s3 = Student.new("Squidward")

i1 = Instructor.new("Mrs. Puff")
i2 = Instructor.new("Plankton")

t1 = s1.add_boating_test("Test1", "pending", i1)
t2 = s2.add_boating_test("Test1", "passed", i1)
t3 = s2.add_boating_test("Test1", "passed", i1)
t4 = s2.add_boating_test("Test1", "failed", i1)
t5 = s2.add_boating_test("Test1", "passed", i1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

