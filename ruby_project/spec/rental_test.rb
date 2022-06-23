require './classes/rentals'
require './classes/book'
require './classes/person'

describe Rental do
  before :each do
    @rentals = Rental.new 'Date', 'Book', 'Person'
  end

  #     describe "#new" do
  #     it "takes three parameters and returns a Rental object" do
  #         @rentals.should be_an_instance_of Rental
  #     end
  #   end

  describe '#date' do
    it 'returns the correct date' do
      @rentals.date.should eql 'Date'
    end
  end
  describe '#book' do
    it 'returns the correct book' do
      @book.book.should eql 'Book'
    end
  end
end
