require './classes/student'

describe Student do
  before :each do
    @student = Student.new 'age', 'name', 'classroom'
  end
  describe '#new' do
    it 'takes four parameters and returns a Student object' do
      @student.should be_an_instance_of Student
    end
  end

  end