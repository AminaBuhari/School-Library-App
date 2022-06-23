require './classes/person'

describe Person do
  before :each do
    @person = Person.new 'age', 'Name', 'Parent_permission'
  end
  describe '#new' do
    it 'takes three parameters and returns a Person object' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @person.name.should eql 'Name'
    end
  end
  describe '#age' do
    it 'returns the correct author' do
      @person.age.should eql 'age'
    end
  end

  it 'should check age limit' do
    age = 12
    name = 'amina'
    parent_permission = true
    cr = Person.new(age, name, parent_permission)
    expect(cr.of_age?).to be false
  end

  it 'should check correct name' do
    age = 12
    name = 'amina'
    parent_permission = true
    cr = Person.new(age, name, parent_permission)
    expect(cr.correct_name).to be name
  end

  it 'should check if you can use service' do
    age = 12
    name = 'amina'
    parent_permission = true
    cr = Person.new(age, name, parent_permission)
    expect(cr.can_use_services?).to be true
  end
end
