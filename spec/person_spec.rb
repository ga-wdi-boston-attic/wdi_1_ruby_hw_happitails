require 'spec_helper'
require_relative '../lib/person'

describe Person do
  let(:name) {'Jack'}
  let(:spot) {Animal.new('spot', 5, 'male', 'dog', ['rubber bone'])}
  let(:marley) {Animal.new('marley', 12, 'female', 'cat', ['mouse toy'])}

  it "#new" do
    Person.new(name).should be_an_instance_of Person
  end

  subject { Person.new(name) }

  it "can be given a pet" do
    subject.add_pet(marley)
    subject.pets.map(&:name).should include(marley.name)
  end

  describe "with one pet" do
    subject { Person.new('jack', [spot])}
    
    it "should have one pet" do
      subject.pets.length.should == 1
      subject.pets.first.name.should == spot.name
      subject.num_of_pets.should == 1
    end

    it "should give you a pet given it's name" do
      subject.pet?(spot.name).should be_true
    end

    it "should find a pet by it's name" do
      subject.find_pet(spot.name).name.should == spot.name
    end

    it "should be able to give up a pet" do
      subject.remove_pet(spot.name)
      subject.pet?(spot.name).should_not be_true
      subject.num_of_pets.should == 0
    end
  end
end