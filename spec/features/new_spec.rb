require 'rails_helper'

describe "adds a new product to the application" do
  
  it "adds a new product" do
    visit'/'
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
end
