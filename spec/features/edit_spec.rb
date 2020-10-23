require 'rails_helper'

describe "editing reviews and products" do

  before :each do
    @product = Product.create({:name => "Dilly Bar", :origin => "Mexico", :cost => 1.99})
    @review = Review.create(author: "Billy Bob", rating: 5, content: "asdf;lkjasfdl;kjasdflkjasdf;lkjasdfl;kjasdf;lkjasdf", product_id: @product.id)
  end

  it "edits a product" do
    visit '/'
    click_link 'Sign-in or Sign-up'
    click_on 'Sign up'
    fill_in 'user[email]', :with => 'abc123@gmail.com'
    fill_in 'user[password]', :with => 'abc123'
    fill_in 'user[password_confirmation]', :with => 'abc123'
    check 'user[admin]'
    click_on 'Sign up'
    visit edit_product_path(@product)
    fill_in "product[name]", :with => "Dingus" 
    fill_in "product[cost]", :with => 6.99
    fill_in "product[origin]", :with => "Mexico"
    click_on "Update Product"
    expect(page).to have_content "Dingus"
  end

  it "edits a review" do
    visit '/'
    click_link 'Sign-in or Sign-up'
    click_on 'Sign up'
    fill_in 'user[email]', :with => 'abc123@gmail.com'
    fill_in 'user[password]', :with => 'abc123'
    fill_in 'user[password_confirmation]', :with => 'abc123'
    check 'user[admin]'
    click_on 'Sign up'
    visit product_review_path(@product, @review)
    click_on 'Edit Review'
    fill_in 'review[author]', :with => 'Big Daddy'
    fill_in 'review[rating]', :with => 3
    fill_in 'review[content]', :with => "Big chungus Big chungus Big chungus Big chungus Big chungus Big chungus"
    click_on 'Update Review'
    expect(page).to have_content 'Big Daddy'
  end


end