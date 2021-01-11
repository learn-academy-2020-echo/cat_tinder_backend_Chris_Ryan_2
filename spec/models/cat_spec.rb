require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do
    cat = Cat.create(age:4, enjoys: 'Walking')
    expect(cat.errors[:name]).to_not be_empty
  end

end
