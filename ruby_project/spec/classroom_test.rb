require './classes/classroom'
require './classes/book'
require './classes/student'


describe Classroom do 
    before :each do
        @classroom = Classroom.new "label"
    end
    
    describe "#new" do
    it "takes one parameters and returns a classroom object" do
        @classroom.should be_an_instance_of Classroom
    end
  end

  describe "#label" do
    it "returns the correct class" do
        @classroom.label.should eql "label"
    end
  end

 
  it 'should have an initial message' do 
    expect(@classroom).to_not be_nil
    @classroom.students == []
 end 
 
 it 'should be able to add student' do
    @classroom.add_student('add new student')
    expect(@classroom.students).to_not be nil 
 end
   
end