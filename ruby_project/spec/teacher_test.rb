require './classes/teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'age', 'specialization', 'name'
  end
  describe '#new' do
    it 'takes three parameters and returns a Teacher object' do
      @teacher.should be_an_instance_of Teacher
    end
  end

  describe '#specialization' do
    it 'returns the correct specialization' do
      @teacher.specialization.should eql 'specialization'
    end
  end
end
