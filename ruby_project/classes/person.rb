require_relative './nameable'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(age, options = {})
    @id = Random.rand(1..1000)
    @name = options[:name] || 'unknown'
    @parent_permission = options[:parent_permission] || true
    @age = age
    @rentals = []
    super()
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def correct_name
    @name
  end
end
