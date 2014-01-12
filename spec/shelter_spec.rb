require 'spec_helper'
require_relative '../lib/shelter'

describe Shelter do

  it ".new" do
    Shelter.new("Pets r Us", "34 Elm St., Natick, MA").should be_an_instance_of Shelter
  end

  let(:cat_toy) {'plastic mouse'}
  let(:frisky) { Animal.new('frisky', 6, 'male', 'cat', [cat_toy]) }
  let(:sam) { Person.new("sam", [frisky])}

  subject { Shelter.new("Pets r Us", "34 Elm St., Natick, MA")}

  it "should be able to register a client" do
    subject.register_client(sam)
    subject.find_client(sam.name).should == sam
  end

  it "should be able to check in a pet" do
    subject.check_in(sam, frisky)
    subject.checked_in?(sam.name, frisky.name).should be_true
  end

  describe "with a"
  it "should be able to check out a pet" do
    subject.check_out(sam, frisky)
    subject.checked_in?(sam.name, frisky.name)
  end
end