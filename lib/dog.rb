require "pry"

class Dog

  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  private
  def self.all
    @@all
  end

  private
  def self.clear_all
    @@all = []
  end

  private
  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end

  def save
    @@all << self
  end
end
