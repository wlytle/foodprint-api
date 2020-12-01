# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Use Yummly api to seed public recipe database
require "uri"
require "net/http"
require "openssl"
require_relative "../keys.rb"

url = URI("https://yummly2.p.rapidapi.com/feeds/list?limit=80&start=200")

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
    ing.save

    r.recipe_ingredients.create(quantity: ingredient["quantity"], unit: ingredient["unit"], ingredient: ing)
  end
end
