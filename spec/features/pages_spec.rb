require 'rails_helper'

describe "views all pages" do
  
  before :each do
    @product = Product.create({:name => "Dilly Bar", :origin => "Mexico", :cost => 1.99})
    @review = Review.create(author: "Billy Bob", rating: 5, content: "asdf;lkjasfdl;kjasdflkjasdf;lkjasdfl;kjasdf;lkjasdf", product_id: @product.id)
  end

  it "views all products" do
    visit products_path
    expect(page).to have_content "Dilly Bar"
  end

  it "views a product page" do
    visit product_path(@product)
    expect(page).to have_content "Cost: $"
  end
end