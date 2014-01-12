require 'spec_helper'
require_relative '../lib/animal'

describe Animal do
  let(:animal_name) { 'buttons'}
  let(:animal_age) {3}
  let(:animal_gender) {'female'}
  let(:animal_species) {'dog'}
  let(:animal_toys) {['Old shoe']}

  subject { Animal.new(animal_name, animal_age, animal_gender, animal_species, animal_toys)}

  it "should be an Animal" do
    subject.should be_an_instance_of Animal
  end

  its(:name) {should eq animal_name}
  its(:age) {should eq animal_age}
  its(:gender) {should eq animal_gender}
  its(:species) {should eq animal_species}
  its(:toys) {should eq animal_toys}
end