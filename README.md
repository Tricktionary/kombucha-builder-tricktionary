# Fullscript - Kombucha Builder

Kombucha Builder is an API for creating and managing kombucha recipes.

## Setup
This app uses Rails 5.1 and Ruby 2.5.0.

However, if you don't have Ruby 2.5 installed, please feel free to change the `.ruby-version` to whatever lastest ruby version you have installed on your computer.

In this app there are tests for both rspec and minitest. Please choose whichever testing framework you are most comfortable with!

## Exercise 1 - Ratings

Users of this app want a way to rate different kombucha recipes through the API.

#### Requirements:
* Ratings should have a score that returns a number between 1 and 5.
* Users can only have 1 rating per kombucha.
* Users should be able read / create / update their rating.
* The Kombucha resource should have a way to return an average rating based on all user ratings for that particular recipe.

## Exercise 2 - Kombucha Flights

As a kombucha restauranteur, I want a way to surprise and delight my customers by generating a random "flight" of kombucha drinks.

#### Requirements:
* Build a random flight picker for kombucha recipes.
* Flights should contain 4 different kombucha recipes. They are only valid with 4.
* Each kombucha should have a different tea base.
* The endpoint should contain two different options when creating a new flight:
  * An optional way to select kombucha recipes greater then a given rating.
  * An optional way to select a particular kombucha recipe as part of the flight.


## Exercise 3 - Querying Kombucha Recipes

When trying to find kombucha recipes, there should be a way to filter results.

#### Requirements
* Fizziness Level: return kombucha recipes based on a kombucha's fizziness level.
* Included Ingredients: return kombuchas that contain the ingredients passed to it. Example: find all kombucha's that have coffee in them.
* Don't Include Ingredients: return kombuchas that *do not* contain the ingredients passed to the endpoint. Example: I don't want recipes that contain coffee
* Popular recipes: return kombuchas that are in 'x' percent or greater of Kombucha flights.
