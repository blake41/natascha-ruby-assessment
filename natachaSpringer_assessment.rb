#natachaSpringer_assessment.rb#
#1. 
array=['Blake','Ashley','Jeff']
array.push('Natacha')
puts array
puts array[1]
puts array.rindex('Jeff')

puts "#################################################"

#2.hashes
#instructor= Hash.new
instructor={:name => "Ashley",:age=>27}
instructor[:location]="NYC"
instructor.each {|key,value| puts "#{key}" +" : "+"#{value}" }
puts instructor[:name]
instructor.each {|key,value| puts key if value==27}

puts "#################################################"

#3.Nested Structures
school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

school[:founded_in]=2013
school[:students].push(:name => "Bob", :grade => "Z-")
school[:students].delete(:name => "Billy", :grade => "F")
school[:students].each {|student| student[:semester] = "Summer"}
school[:instructors].at(1)[:subject] ="being almost better than Blake"
school[:students].at(1)[:grade] ="F"
school[:students].each {|student| student[:name] if student[:grade]=="B"}
school[:instructors].each { |instructor| instructor[:subject] if instructor[:name] == "Jeff"}

school.each do |key, value|
    if key == :instructors
        value.each do |person|
            puts "#{person[:name]} teaches everything on #{person[:subject]}."
        end
    elsif key == :students
        value.each do |person|
            puts "#{person[:name]} is getting a #{person[:grade]} for the #{person[:semester]} semester."
        end

    else
    puts "The school was #{key} #{value}."
    end
end

puts "#################################################"

#4. Methods
def return_student_grade(hash,name)
  hash[:students].each{|person| return person[:grade] if person[:name]==name}
end

def update_teacher_subject (hash, instructor_name, newsubject)
  hash[:instructors].each {|person| return person[:subject]=newsubject if person[:name] == instructor_name}
end
update_teacher_subject(school,"Blake","being terrible")

def add_newstudent (hash, studentname, grade, semester)
  hash[:students].push(:name=> studentname, :grade=>grade, :semester=>semester)
end

add_newstudent(school, "Natacha","A+","Summer")

def newkey (hash,key,value)
  hash[key.to_sym]=value
end

newkey(school,"ranking",1)
puts school



#5.Object Orientation 
#definitely not perfect
class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking

  def initialize(name,location,ranking,*students,*instructors)
    @name=name
    @location=location
    @ranking=ranking
    @students = []
    @instructors =[]
    SCHOOLS<<self
  end

def set_ranking(value)
  @ranking=value
end

def add_student (name,grade,semester)
:students << { :name => name, :grade => grade, :semester => semester}
end

def remove_student(name)
@students.each {|student| @students.delete(student) if student[:name] == name}
end

def reset_schools
  SCHOOLS.clear
  ##SCHOOLS=[]
end

end

#6.Classes

class Student
    attr_accessor :grade, :semester
    attr_reader :name

    def initialize(name, grade, semester)
        @name = name
        @grade = grade
        @semester = semester
    end

end
#####not sure about that one#######
  def find_student(student_name)
    students.each do |student_class|
      if student_class.name == student_name
        return student_class
        puts "#{student_name} was found."
      end






#7.Self
#a 
#=>hello
#=>Student

#b 
#=>Student

#c
#=> Object_id

#d
#=>Object_id

#e
#=>goodbye  



  



















