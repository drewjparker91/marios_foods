require 'rails_helper'

describe "views all pages" do
  
  before :each do
    user = User.create(email: "abc123@gmail.com", password: "abc123", admin: true)
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

  # it "views page to make a new product" do
  #   visit new_product_path
  #   expect(page).to have_content "New Product"
  # end

  # it "views page to edit a product" do
  #   visit product_path(@product)
  #   click_on "Edit Product"
  #   expect(page).to have_content "Edit Product"
  # end

  it "views the review page of a product" do
    visit product_review_path(@product, @review)
    expect(page).to have_content "Billy Bob"
  end
end