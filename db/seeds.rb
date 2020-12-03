# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#### Seed emissions tables
# ghg = [
#   {
#     "Product": "Wheat & Rye (Bread)",
#     "land_use_change": 0.1,
#     "animal_feed": 0,
#     "Farm": 0.8,
#     "Processing": 0.2,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0.1,
#   },
#   {
#     "Product": "Maize (Meal)",
#     "land_use_change": 0.3,
#     "animal_feed": 0,
#     "Farm": 0.5,
#     "Processing": 0.1,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Barley (Beer)",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0.1,
#     "Transport": 0,
#     "Packging": 0.5,
#     "Retail": 0.3,
#   },
#   {
#     "Product": "Oatmeal",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 1.4,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Rice",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 3.6,
#     "Processing": 0.1,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0.1,
#   },
#   {
#     "Product": "Potatoes",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Cassava",
#     "land_use_change": 0.6,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Sugar, Cane",
#     "land_use_change": 1.2,
#     "animal_feed": 0,
#     "Farm": 0.5,
#     "Processing": 0,
#     "Transport": 0.8,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Sugar, Beet",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.5,
#     "Processing": 0.2,
#     "Transport": 0.6,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Other Pulses",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 1.1,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0.4,
#     "Retail": 0,
#   },
#   {
#     "Product": "Peas",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.7,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Nuts",
#     "land_use_change": -2.1,
#     "animal_feed": 0,
#     "Farm": 2.1,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Groundnuts",
#     "land_use_change": 0.4,
#     "animal_feed": 0,
#     "Farm": 1.4,
#     "Processing": 0.4,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Soymilk",
#     "land_use_change": 0.2,
#     "animal_feed": 0,
#     "Farm": 0.1,
#     "Processing": 0.2,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0.3,
#   },
#   {
#     "Product": "Tofu",
#     "land_use_change": 1,
#     "animal_feed": 0,
#     "Farm": 0.5,
#     "Processing": 0.8,
#     "Transport": 0.2,
#     "Packging": 0.2,
#     "Retail": 0.3,
#   },
#   {
#     "Product": "Soybean Oil",
#     "land_use_change": 3.1,
#     "animal_feed": 0,
#     "Farm": 1.5,
#     "Processing": 0.3,
#     "Transport": 0.3,
#     "Packging": 0.8,
#     "Retail": 0,
#   },
#   {
#     "Product": "Palm Oil",
#     "land_use_change": 3.1,
#     "animal_feed": 0,
#     "Farm": 2.1,
#     "Processing": 1.3,
#     "Transport": 0.2,
#     "Packging": 0.9,
#     "Retail": 0,
#   },
#   {
#     "Product": "Sunflower Oil",
#     "land_use_change": 0.1,
#     "animal_feed": 0,
#     "Farm": 2.1,
#     "Processing": 0.2,
#     "Transport": 0.2,
#     "Packging": 0.9,
#     "Retail": 0,
#   },
#   {
#     "Product": "Rapeseed Oil",
#     "land_use_change": 0.2,
#     "animal_feed": 0,
#     "Farm": 2.3,
#     "Processing": 0.2,
#     "Transport": 0.2,
#     "Packging": 0.8,
#     "Retail": 0,
#   },
#   {
#     "Product": "Olive Oil",
#     "land_use_change": -0.4,
#     "animal_feed": 0,
#     "Farm": 4.3,
#     "Processing": 0.7,
#     "Transport": 0.5,
#     "Packging": 0.9,
#     "Retail": 0,
#   },
#   {
#     "Product": "Tomatoes",
#     "land_use_change": 0.4,
#     "animal_feed": 0,
#     "Farm": 0.7,
#     "Processing": 0,
#     "Transport": 0.2,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Onions & Leeks",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Root Vegetables",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Brassicas",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.3,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Other Vegetables",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0.1,
#     "Transport": 0.2,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Citrus Fruit",
#     "land_use_change": -0.1,
#     "animal_feed": 0,
#     "Farm": 0.3,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Bananas",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.3,
#     "Processing": 0.1,
#     "Transport": 0.3,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Apples",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.2,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Berries & Grapes",
#     "land_use_change": 0,
#     "animal_feed": 0,
#     "Farm": 0.7,
#     "Processing": 0,
#     "Transport": 0.2,
#     "Packging": 0.2,
#     "Retail": 0,
#   },
#   {
#     "Product": "Wine",
#     "land_use_change": -0.1,
#     "animal_feed": 0,
#     "Farm": 0.6,
#     "Processing": 0.1,
#     "Transport": 0.1,
#     "Packging": 0.7,
#     "Retail": 0,
#   },
#   {
#     "Product": "Other Fruit",
#     "land_use_change": 0.1,
#     "animal_feed": 0,
#     "Farm": 0.4,
#     "Processing": 0,
#     "Transport": 0.2,
#     "Packging": 0,
#     "Retail": 0,
#   },
#   {
#     "Product": "Coffee",
#     "land_use_change": 3.7,
#     "animal_feed": 0,
#     "Farm": 10.4,
#     "Processing": 0.6,
#     "Transport": 0.1,
#     "Packging": 1.6,
#     "Retail": 0.1,
#   },
#   {
#     "Product": "Dark Chocolate",
#     "land_use_change": 14.3,
#     "animal_feed": 0,
#     "Farm": 3.7,
#     "Processing": 0.2,
#     "Transport": 0.1,
#     "Packging": 0.4,
#     "Retail": 0,
#   },
#   {
#     "Product": "Beef (beef herd)",
#     "land_use_change": 16.3,
#     "animal_feed": 1.9,
#     "Farm": 39.4,
#     "Processing": 1.3,
#     "Transport": 0.3,
#     "Packging": 0.2,
#     "Retail": 0.2,
#   },
#   {
#     "Product": "Beef (dairy herd)",
#     "land_use_change": 0.9,
#     "animal_feed": 2.5,
#     "Farm": 15.7,
#     "Processing": 1.1,
#     "Transport": 0.4,
#     "Packging": 0.3,
#     "Retail": 0.2,
#   },
#   {
#     "Product": "Lamb & Mutton",
#     "land_use_change": 0.5,
#     "animal_feed": 2.4,
#     "Farm": 19.5,
#     "Processing": 1.1,
#     "Transport": 0.5,
#     "Packging": 0.3,
#     "Retail": 0.2,
#   },
#   {
#     "Product": "Pig Meat",
#     "land_use_change": 1.5,
#     "animal_feed": 2.9,
#     "Farm": 1.7,
#     "Processing": 0.3,
#     "Transport": 0.3,
#     "Packging": 0.3,
#     "Retail": 0.2,
#   },
#   {
#     "Product": "Poultry Meat",
#     "land_use_change": 2.5,
#     "animal_feed": 1.8,
#     "Farm": 0.7,
#     "Processing": 0.4,
#     "Transport": 0.3,
#     "Packging": 0.2,
#     "Retail": 0.2,
#   },
#   {
#     "Product": "Milk",
#     "land_use_change": 0.5,
#     "animal_feed": 0.2,
#     "Farm": 1.5,
#     "Processing": 0.1,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0.3,
#   },
#   {
#     "Product": "Cheese",
#     "land_use_change": 4.5,
#     "animal_feed": 2.3,
#     "Farm": 13.1,
#     "Processing": 0.7,
#     "Transport": 0.1,
#     "Packging": 0.2,
#     "Retail": 0.3,
#   },
#   {
#     "Product": "Eggs",
#     "land_use_change": 0.7,
#     "animal_feed": 2.2,
#     "Farm": 1.3,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0.2,
#     "Retail": 0,
#   },
#   {
#     "Product": "Fish (farmed)",
#     "land_use_change": 0.5,
#     "animal_feed": 0.8,
#     "Farm": 3.6,
#     "Processing": 0,
#     "Transport": 0.1,
#     "Packging": 0.1,
#     "Retail": 0,
#   },
#   {
#     "Product": "Shrimps (farmed)",
#     "land_use_change": 0.2,
#     "animal_feed": 2.5,
#     "Farm": 8.4,
#     "Processing": 0,
#     "Transport": 0.2,
#     "Packging": 0.3,
#     "Retail": 0.2,
#   },
# ]

# ghg.each do |data|
#   GreenhouseGass.create(product: data[:Product], land_use_change: data[:land_use_change], animal_feed: data[:animal_feed], farm: data[:Farm], processing: data[:Processing], transport: data[:Transport], packaging: data[:Packging], retail: data[:Retail])
# end

# ## Water Use
# h2o =
#   {
#     "Apples": 180.1,
#     "Bananas": 114.5,
#     "Barley": 17.1,
#     "Beef (beef herd)": 1451.2,
#     "Beef (dairy herd)": 2714.3,
#     "Sugar, Beet": 217.7,
#     "Berries & Grapes": 419.6,
#     "Brassicas": 119.4,
#     "Sugar, Cane": 620.1,
#     "Cassava": 0,
#     "Cheese": 5605.2,
#     "Citrus Fruit": 82.7,
#     "Coffee": 25.9,
#     "Dark Chocolate": 540.6,
#     "Eggs": 577.7,
#     "Fish (farmed)": 3691.3,
#     "Groundnuts": 1852.3,
#     "Lamb & Mutton": 1802.8,
#     "Maize": 215.7,
#     "Milk": 628.2,
#     "Nuts": 4133.8,
#     "Oatmeal": 482.4,
#     "Olive Oil": 2141.8,
#     "Onions & Leeks": 14.3,
#     "Other Fruit": 153.5,
#     "Other Pulses": 435.7,
#     "Other Vegetables": 102.5,
#     "Palm Oil": 6.4,
#     "Peas": 396.6,
#     "Pig Meat": 1795.8,
#     "Potatoes": 59.1,
#     "Poultry Meat": 660,
#     "Prawns (farmed)": 3515.4,
#     "Rapeseed Oil": 237.7,
#     "Rice": 2248.4,
#     "Root Vegetables": 28.4,
#     "Soybean Oil": 414.6,
#     "Soymilk": 27.8,
#     "Sunflower Oil": 1007.9,
#     "Tofu (soybeans)": 148.6,
#     "Tomatoes": 369.8,
#     "Wheat & Rye": 647.5,
#     "Wine": 78.9,
#   }

# h2o.each do |k, v|
#   WaterUse.create(product: k, use: h2o[k])
# end

# ### Eutrophication

# eut = {
#   "Apples": 1.45,
#   "Bananas": 3.29,
#   "Barley": 2.33,
#   "Beef (beef herd)": 301.41,
#   "Beef (dairy herd)": 365.29,
#   "Sugar, Beet": 5.41,
#   "Berries & Grapes": 6.12,
#   "Brassicas": 5.01,
#   "sugar, Cane": 16.92,
#   "Cassava": 0.69,
#   "Cheese": 98.37,
#   "Citrus Fruit": 2.24,
#   "Coffee": 110.52,
#   "Dark Chocolate": 87.08,
#   "Eggs": 21.76,
#   "Fish (farmed)": 235.12,
#   "Groundnuts": 14.14,
#   "Lamb & Mutton": 97.13,
#   "Maize": 4.03,
#   "Milk": 10.65,
#   "Nuts": 19.15,
#   "Oatmeal": 11.23,
#   "Olive Oil": 37.26,
#   "Onions & Leeks": 3.24,
#   "Other Fruit": 2.43,
#   "Other Pulses": 17.08,
#   "Other Vegetables": 2.27,
#   "Palm Oil": 10.67,
#   "Peas": 7.52,
#   "Pig Meat": 76.38,
#   "Potatoes": 3.48,
#   "Poultry Meat": 48.7,
#   "Prawns (farmed)": 227.22,
#   "Rapeseed Oil": 19.19,
#   "Rice": 35.07,
#   "Root Vegetables": 1.61,
#   "Soybean Oil": 11.69,
#   "Soymilk": 1.06,
#   "Sunflower Oil": 50.66,
#   "Tofu (soybeans)": 6.16,
#   "Tomatoes": 7.51,
#   "Wheat & Rye": 7.16,
#   "Wine": 4.57,
# }

# eut.each do |k, v|
#   Eutrophication.create(product: k, eutrophication: eut[k])
# end

#Use Yummly api to seed public recipe database
require "uri"
require "net/http"
require "openssl"

url = URI("https://yummly2.p.rapidapi.com/feeds/list?limit=18&start=0&tag=list.recipe.popular")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-key"] = YUMMLY_API_KEY
request["x-rapidapi-host"] = "yummly2.p.rapidapi.com"

response = http.request(request)
recipes = JSON.parse(response.body)

recipes["feed"].each do |recipe|
  #Deal with no instructions recipe
  return unless recipe["content"]["preparationSteps"] && recipe["content"]["details"]["keywords"][0] && recipe["content"]["details"]["numberOfServings"] && recipe["display"]["displayName"] && recipe["display"]["images"][0]
  #Create new recipe
  r = Recipe.create(title: recipe["display"]["displayName"], image: recipe["display"]["images"][0], instructions: recipe["content"]["preparationSteps"].join(" "), category: recipe["content"]["details"]["keywords"][0], yield: recipe["content"]["details"]["numberOfServings"], public: true)

  #Create new ingredients and recipe ingredients properly associated
  recipe["content"]["ingredientLines"].each do |ingredient|
    ing = Ingredient.find_or_create_by(name: ingredient["ingredient"])

    ingredient_type = IngredientType.find_or_create_by(name: ingredient["category"])
    ing.ingredient_type_id = ingredient_type.id

    unless ing.greenhouse_gass
      ing.find_ghg_product
      ing.find_water_product
      ing.find_eut_product
      ing.save
    end

    r.recipe_ingredients.create(quantity: ingredient["quantity"], whole_line: ingredient["wholeLine"], unit: ingredient["unit"], ingredient: ing)
  end
end
