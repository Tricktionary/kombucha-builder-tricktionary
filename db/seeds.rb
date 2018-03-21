# Ingredients
## Tea
white_tea  = Ingredient.create!(name: 'White Tea', base: true, caffeine_free: true, vegan: true)
black_tea  = Ingredient.create!(name: 'Black Tea', base: true, caffeine_free: false, vegan: true)
green_tea  = Ingredient.create!(name: 'Green Tea', base: true, caffeine_free: false, vegan: true)
oolong_tea = Ingredient.create!(name: 'Oolong Tea', base: true, caffeine_free: false, vegan: true)

## Fun stuff
vanilla         = Ingredient.create!(name: 'Vanilla', base: false, caffeine_free: true, vegan: true)
ginger          = Ingredient.create!(name: 'Ginger', base: false, caffeine_free: true, vegan: true)
hibiscus        = Ingredient.create!(name: 'Hibiscus', base: false, caffeine_free: true, vegan: true)
spearmint       = Ingredient.create!(name: 'Spearmint', base: false, caffeine_free: true, vegan: true)
lemongrass      = Ingredient.create!(name: 'Lemongress', base: false, caffeine_free: true, vegan: true)
peppermint      = Ingredient.create!(name: 'Peppermint', base: false, caffeine_free: true, vegan: true)
rose_petal      = Ingredient.create!(name: 'Rose Petal', base: false, caffeine_free: true, vegan: true)
tulip           = Ingredient.create!(name: 'Tulip', base: false, caffeine_free: true, vegan: true)
chocolate       = Ingredient.create!(name: 'Chocolate', base: false, caffeine_free: false, vegan: true)
mandarin_orange = Ingredient.create!(name: 'Mandorin Orange', base: false, caffeine_free: false, vegan: true)
coffee          = Ingredient.create!(name: 'Coffee', base: false, caffeine_free: false, vegan: true)
concord_grape   = Ingredient.create!(name: 'Concord Grape', base: false, caffeine_free: true, vegan: true)
mango           = Ingredient.create!(name: 'Mango', base: false, caffeine_free: true, vegan: true)
guava           = Ingredient.create!(name: 'Guava', base: false, caffeine_free: true, vegan: true)
banana          = Ingredient.create!(name: 'Banana', base: false, caffeine_free: true, vegan: true)
pineapple       = Ingredient.create!(name: 'Pineapple', base: false, caffeine_free: true, vegan: true)
dragon_fruit    = Ingredient.create!(name: 'Guava', base: false, caffeine_free: true, vegan: true)
avacado         = Ingredient.create!(name: 'Avacado', base: false, caffeine_free: true, vegan: true)
bacon           = Ingredient.create!(name: 'Bacon', base: false, caffeine_free: true, vegan: false)
sausage         = Ingredient.create!(name: 'Sausage', base: false, caffeine_free: true, vegan: false)
ham             = Ingredient.create!(name: 'Ham', base: false, caffeine_free: true, vegan: false)
pepperoni       = Ingredient.create!(name: 'Pepperoni', base: false, caffeine_free: true, vegan: false)
mozzarella      = Ingredient.create!(name: 'Mozzarella', base: false, caffeine_free: true, vegan: false)
tabasco         = Ingredient.create!(name: 'Tobasco', base: false, caffeine_free: true, vegan: true)
green_olive     = Ingredient.create!(name: 'Green Olive', base: false, caffeine_free: true, vegan: true)
broccoli        = Ingredient.create!(name: 'Broccoli', base: false, caffeine_free: true, vegan: true)
worschestire    = Ingredient.create!(name: 'Worchestire', base: false, caffeine_free: true, vegan: true)
clamato         = Ingredient.create!(name: 'Clamato', base: false, caffeine_free: true, vegan: false)
sriracha        = Ingredient.create!(name: 'Sriracha', base: false, caffeine_free: true, vegan: true)
beer            = Ingredient.create!(name: 'Beer', base: false, caffeine_free: true, vegan: true)
redbull         = Ingredient.create!(name: 'Redbull', base: false, caffeine_free: false, vegan: false)

sample = -> { [*1..10].sample }

# Kombuchas
guinny_pop = Kombucha.create!(name: 'Guinny Pop', fizziness_level: 'low')
[black_tea, vanilla, mandarin_orange, rose_petal].each do |ingredient|
  guinny_pop.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

pork_pop = Kombucha.create!(name: 'Pork Pop', fizziness_level: 'medium')
[oolong_tea, bacon, sausage, ham].each do |ingredient|
  pork_pop.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

breathyzer = Kombucha.create!(name: 'Breathalyzer', fizziness_level: 'medium')
[white_tea, spearmint, peppermint, ginger].each do |ingredient|
  breathyzer.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

wobbly_pop = Kombucha.create!(name: 'Wobbly pop', fizziness_level: 'high')
[green_tea, beer, ginger, vanilla].each do |ingredient|
  wobbly_pop.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

pizza_pop = Kombucha.create!(name: 'Pizza pop', fizziness_level: 'low')
[black_tea, bacon, pepperoni, mozzarella].each do |ingredient|
  pizza_pop.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

tropical_party = Kombucha.create!(name: 'Tropical Burst', fizziness_level: 'low')
[oolong_tea, mango, guava, dragon_fruit].each do |ingredient|
  tropical_party.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

spicy_sting = Kombucha.create!(name: 'Spicy Sting', fizziness_level: 'high')
[white_tea, clamato, sriracha, tabasco].each do |ingredient|
  spicy_sting.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

dark_and_stormy = Kombucha.create!(name: 'Dark & Stormy', fizziness_level: 'medium')
[black_tea, ginger, chocolate, mandarin_orange].each do |ingredient|
  dark_and_stormy.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

amped_up = Kombucha.create!(name: 'Amped Up', fizziness_level: 'high')
[green_tea, redbull, vanilla, ginger].each do |ingredient|
  amped_up.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end

froot_punch = Kombucha.create!(name: 'Froot Punch', fizziness_level: 'medium')
[white_tea, concord_grape, banana, pineapple].each do |ingredient|
  froot_punch.recipe_items.create!(ingredient_id: ingredient.id, amount: sample.call)
end
