require 'rails_helper'

describe "editing reviews and products" do

  before :each do
    @product = Product.create({:name => "Dilly Bar", :origin => "Mexico", :cost => 1.99})
    @review = Review.create(author: "Billy Bob", rating: 5, content: "asdf;lkjasfdl;kjasdflkjasdf;lkjasdfl;kjasdf;lkjasdf", product_id: @product.id)
  end

  it "edits a product" do
    visit edit_product_path(@product)
    fill_in "product[name]", :with => "Banana Pancake Mix"
    fill_in "product[cost]", :with => 2.99
    fill_in "product[origin]", :with => "Ecuador"
    click_on "Update Product"
    expect(page).to have_content "Banana Pancake Mix"
  end
end