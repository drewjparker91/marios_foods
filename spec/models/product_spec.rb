require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :origin }
  it("titleizes the name and origin of a product") do
    product = Product.create({name: "oatmeal", cost: 2, origin: "United States"})
    expect(product.name()).to(eq("Oatmeal"))
  end
end
