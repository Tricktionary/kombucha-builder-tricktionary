# Fullscript - Kombucha Creator

Kombucha Creator is an API for creating and managing kombuchas recipes. This app is using Rails 5.1 and Ruby 2.5.0.

## Excercise 1 - Ratings

Create a rating endpoint where users can rate a kombucha in the API. Users can have only one rating per kombucha. Add the average of the rating for one kombucha to the response for the kombucha resource.

## Excercise 2 - Kombucha Flights

Build a random flight picker for kombucha's. Flights should only contian four different kombucha's, each kombucha should have a different tea base. Flights are only valid if they have four kombuchas.

The endpoint should contain two different options:

* Ratings:
  * Only select kombuchas greater then a given rates.
* Ingredients:
  * Only select kombuchas that contain a given ingredient.

## Excerise 3 - Quering Kombuchas

We want to have been filtering options for the kombucha index endpoint. The index endpoint should be able to:

* Filter 1: return based on the kombuchas fizziness level, and either not the kombuchas is coffee free or vegan.
* Filter 2: return kombuchas contains ingredients passed to it, the kombucha should contain an inclusive set of ingredients passed to the endpoint.
* Filter 3: return kombuchas that do not contian the ingredients passed to the endpoint.
* Filter 4: return kombuchas that are in 'x' percent or great of Kombucha flights.
