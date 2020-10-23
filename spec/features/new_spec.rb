require 'rails_helper'

describe "adds a new products to the application" do

  before :each do
    @product = Product.create({:name => "Dilly Bar", :origin => "Mexico", :cost => 1.99})
  end  
  
  it "adds a new product" do
    visit '/'
    click_link 'Sign-in or Sign-up'
    click_on 'Sign up'
    fill_in 'user[email]', :with => 'abc123@gmail.com'
    fill_in 'user[password]', :with => 'abc123'
    fill_in 'user[password_confirmation]', :with => 'abc123'
    check 'user[admin]'
    click_on 'Sign up'
    visit root_path
    click_link 'Create new product!'
    fill_in 'product[name]', :with => 'Broad Toad'
    fill_in 'product[cost]', :with => '3.99'
    fill_in 'product[origin]', :with => 'United States of America'
    click_on 'Create Product'
    expect(page).to have_content 'Broad Toad'
  end

  it "adds a new review to a product" do
    visit '/'
    click_link 'Sign-in or Sign-up'
    click_on 'Sign up'
    fill_in 'user[email]', :with => 'abc123@gmail.com'
    fill_in 'user[password]', :with => 'abc123'
    fill_in 'user[password_confirmation]', :with => 'abc123'
    check 'user[admin]'
    click_on 'Sign up'
    visit product_path(@product)
    click_link 'Add a Review'
    fill_in 'review[author]', :with => 'Brandolf' 
    fill_in 'review[rating]', :with => 3
    fill_in 'review[content]', :with => "alsdk;fjalsdkjf al;ksdjf;laksjdf ;lkasdjfl;kjasdf;lkjasd;flkjasd;lfkjasd;lfkj"
    click_on 'Create Review'
    expect(page).to have_content "Brandolf"
  end
end


