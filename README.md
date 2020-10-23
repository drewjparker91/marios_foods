# _Mario's Specialty Foods_

_16 October 2020_

#### _Ruby Independent Project #4 (for Epicodus)_

#### By _**Drew Parker**_

## Description

_Database
The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country_of_origin. All reviews should have an author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well.

Landing Page
The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below.

Products
The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

Users should be able to add, update and delete new products. Don't worry about user authentication. Assume everyone who visits the site is an admin for now.
Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating. That's included in the further exploration section.)
Users should be able to add a review to a product.
Validations
Your site should include validations for the following:

All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.
Callbacks
Your site should include a callback for the following:

All products are automatically titleized (first letter of each word capitalized) before they are saved to the database.
Seeding
Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database._

## Specifications
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 1 | User can add a product | "Dilly Bar" | Product List: "Dilly Bar" |
| 2 | User can update a product | Update "Dilly Bar" to "Banana" | Product List: Banana |
| 3 | User can delete a product | Delete "Dilly Bar" | Product List: |
| 4 | User can add a review to a product | "Great Banana" | Review: "Great Banana"|
| 5 | User can update a review | Update "Great Banana" to "Bad Banana" | Review: "Bad Banana" |
| 6 | User can delete a review | Delete "Bad Banana" | Review: | 

## Setup/Installation Requirements

# NOTE TO TRAVIS
* there is an admin checkbox I made in order to pass tests
* ADMIN LOGIN INFO:
* Email: abc123@gmail.com
* Password: abc123
* USER LOGIN INFO:
* Email: def456@gmail.com
* Password: def456

To View This Project:
* Clone this repository: https://github.com/drewjparker91/marios_foods.git.
* Run "bundle" in the terminal to bundle the ruby gems
* Run "rake: db:create" in the terminal
* Run "rake db:migrate" in the terminal
* Run "rake db:test:prepare" in the terminal
* Run "rake db:seed" in the terminal
* Run "rails s" in the terminal
* Open browser and enter the "localhost:" with the number given to you in the terminal, appendended on it.

## Known Bugs
_There are no known bugs at this time._

## Technologies Used

* Ruby
* Ruby Gems: rspec, pry, sinatra, sintatra-contrib, capybara, pg, faker, puma, shoulda-matchers
* Stack Overflow
* ruby-lang.org/en/documentation
* Psql

### License

Copyright (c) 2020 **_Drew Parker_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.