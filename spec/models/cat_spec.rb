require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do
    cat = Cat.create(age:4, enjoys: 'Walking')
    expect(cat.errors[:name]).to_not be_empty
  end
  it "should validate age" do
    cat = Cat.create(name:'Felix', enjoys: 'Walking')
    expect(cat.errors[:age]).to_not be_empty
  end
  it "should validate enjoys" do
    cat = Cat.create(name:'Felix', age:4)
    expect(cat.errors[:enjoys]).to_not be_empty
  end
  it "enjoys should contain at least 10 characters" do
    cat = Cat.create(name:'Felix', age:4, enjoys: 'Walking')
    expect(cat.errors[:enjoys]).to include "10 characters is the minimum allowed"
  end

end
