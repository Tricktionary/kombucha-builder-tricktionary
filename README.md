# Fullscript - Kombucha Creator

Kombucha Creator is an app for creating and managing kombuchas repices. This app

## Excerise 1 - Ratings

Create a rating endpoint where users can rate a kombucha. Users can have only one rating pre kombucha. Add the average of the rating for one kombucha to the
response for the kombucha resource.

## Excerise 2 - Creating a Kombucha

Add a new API endpoint where you take in one base ingredient and 3 other ingredients. Kombucha's should not have the same ingredient twice, but they need at least one base ingredient.

## Excerise 3 - Kombucha Flights

Build a random flight picker for kombucha's. Flights should only contian four different kombucha's, each kombucha should have a different tea base. Flights are only valid if they have four kombuchas.
The endpoint should contain two different options;
Ratings:
Only select kombuchas greater then a given rates.
Ingredients:
Only select kombuchas that contain a given ingredient.

## Excerise 4 - Quering Kombuchas

We want to have been filtering options for the kombucha index endpoint. The index endpoint should be able to:

Filter 1: return based on the kombuchas fizziness level, and ether not the kombuchas is coffee free or vegan.
Filter 2: return kombuchas contains ingredients passed to it, the kombucha should contain an inclusive set of ingredients passed to the endpoint.
Filter 3: return kombuchas that do not contian the ingredients passed to the endpoint.
Filter 4: return kombuchas that are in 'x' percent or great of Kombucha flights.
