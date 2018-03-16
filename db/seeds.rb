# WORK IN PROGRESS
# Kombuchas
#   name
#   fizziness_level

# Ingredients
#   name
#   base bool
#   caffeine_free bool
#   amount?

# KombuchasIngredients

# Ratings

# Flights
#   name (randomly generated)

# KombuchasFlights


# Ingredients
## Tea
white_tea  = Ingredient.create(name: 'White Tea', base: true, caffeine_free: true, vegan: true)
black_tea  = Ingredient.create(name: 'Black Tea', base: true, caffeine_free: false, vegan: true)
green_tea  = Ingredient.create(name: 'Green Tea', base: true, caffeine_free: false, vegan: true)
oolong_tea = Ingredient.create(name: 'Oolong Tea', base: true, caffeine_free: false, vegan: true)

## Fun stuff
vanilla         = Ingredient.create(name: 'Vanilla', base: false, caffeine_free: true, vegan: true)
ginger          = Ingredient.create(name: 'Ginger', base: false, caffeine_free: true, vegan: true)
hibiscus        = Ingredient.create(name: 'Hibiscus', base: false, caffeine_free: true, vegan: true)
spearmint       = Ingredient.create(name: 'Spearmint', base: false, caffeine_free: true, vegan: true)
lemongrass      = Ingredient.create(name: 'Lemongress', base: false, caffeine_free: true, vegan: true)
peppermint      = Ingredient.create(name: 'Peppermint', base: false, caffeine_free: true, vegan: true)
rose_petal      = Ingredient.create(name: 'Rose Petal', base: false, caffeine_free: true, vegan: true)
tulip           = Ingredient.create(name: 'Tulip', base: false, caffeine_free: true, vegan: true)
chocolate       = Ingredient.create(name: 'Chocolate', base: false, caffeine_free: false, vegan: true)
mandarin_orange = Ingredient.create(name: 'Mandorin Orange', base: false, caffeine_free: false, vegan: true)
coffee          = Ingredient.create(name: 'Coffee', base: false, caffeine_free: false, vegan: true)
concord_grape   = Ingredient.create(name: 'Concord Grape', base: false, caffeine_free: true, vegan: true)
mango           = Ingredient.create(name: 'Mango', base: false, caffeine_free: true, vegan: true)
guava           = Ingredient.create(name: 'Guava', base: false, caffeine_free: true, vegan: true)
banana          = Ingredient.create(name: 'Banana', base: false, caffeine_free: true, vegan: true)
pineapple       = Ingredient.create(name: 'Pineapple', base: false, caffeine_free: true, vegan: true)
dragon_fruit    = Ingredient.create(name: 'Guava', base: false, caffeine_free: true, vegan: true)
avacado         = Ingredient.create(name: 'Avacado', base: false, caffeine_free: true, vegan: true)
bacon           = Ingredient.create(name: 'Bacon', base: false, caffeine_free: true, vegan: false)
sausage         = Ingredient.create(name: 'Sausage', base: false, caffeine_free: true, vegan: false)
ham             = Ingredient.create(name: 'Ham', base: false, caffeine_free: true, vegan: false)
pepperoni       = Ingredient.create(name: 'Pepperoni', base: false, caffeine_free: true, vegan: false)
mozzarella      = Ingredient.create(name: 'Mozzarella', base: false, caffeine_free: true, vegan: false)
tabasco         = Ingredient.create(name: 'Tobasco', base: false, caffeine_free: true, vegan: true)
green_olive     = Ingredient.create(name: 'Green Olive', base: false, caffeine_free: true, vegan: true)
broccoli        = Ingredient.create(name: 'Broccoli', base: false, caffeine_free: true, vegan: true)
worschestire    = Ingredient.create(name: 'Worchestire', base: false, caffeine_free: true, vegan: true)
clamato         = Ingredient.create(name: 'Clamato', base: false, caffeine_free: true, vegan: false)
sriracha        = Ingredient.create(name: 'Sriracha', base: false, caffeine_free: true, vegan: true)
beer            = Ingredient.create(name: 'Beer', base: false, caffeine_free: true, vegan: true)
redbull         = Ingredient.create(name: 'Redbull', base: false, caffeine_free: false, vegan: false)

# Kombuchas
guinny_pop = Kombucha.create(name: 'Guinny Pop', fizziness_level: 'low')
guinny_pop.ingredients << [black_tea, vanilla, mandarin_orange, rose_petal]

pork_pop = Kombucha.create(name: 'Pork Pop', fizziness_level: 'medium')
pork_pop.ingredients << [oolong_tea, bacon, sausage, ham]

breathyzer = Kombucha.create(name: 'Breathalyzer', fizziness_level: 'medium')
breathyzer.ingredients << [white_tea, spearmint, peppermint, ginger]

wobbly_pop = Kombucha.create(name: 'Wobbly pop', fizziness_level: 'high')
wobbly_pop.ingredients << [green_tea, beer, ginger, vanilla]

pizza_pop = Kombucha.create(name: 'Pizza pop', fizziness_level: 'low')
pizza_pop.ingredients << [black_tea, bacon, pepperoni, mozzarella]

tropical_party = Kombucha.create(name: 'Tropical Burst', fizziness_level: 'low')
tropical_party.ingredients << [oolong_tea, mango, guava, dragon_fruit]

spicy_sting = Kombucha.create(name: 'Spicy Sting', fizziness_level: 'high')
spicy_sting.ingredients << [white_tea, clamato, sriracha, tabasco]

dark_and_stormy = Kombucha.create(name: 'Dark & Stormy', fizziness_level: 'medium')
dark_and_stormy.ingredients << [black_tea, ginger, chocolate, mandarin_orange]

amped_up = Kombucha.create(name: 'Amped Up', fizziness_level: 'high')
amped_up.ingredients << [green_tea, redbull, vanilla, ginger]

froot_punch = Kombucha.create(name: 'Froot Punch', fizziness_level: 'medium')
froot_punch.ingredients << [white_tea, concord_grape, banana, pineapple]
