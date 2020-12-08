class Ingredient < ApplicationRecord
  belongs_to :greenhouse_gass, optional: true
  belongs_to :water_use, optional: true
  belongs_to :eutrophication, optional: true
  # belongs_to :ingredient_type, optional: true
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients

  #associate ingredients with emiisions data categories
  def find_ghg_product

    #make name an array containg only alpha chars
    name = self.name.downcase.gsub(/[^a-z\s]/, "").split(" ")
    GreenhouseGass.all.each do |ghg|
      # Deal with oil edge case
      if name.include?("oil")
        if name.include?("vegetable") || name.include?("soybean")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Soybean Oil")
          self.save
          return
        elsif name.include?("palm")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Palm Oil")
          self.save
          return
        elsif name.include?("sunflower")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Sunflower Oil")
          self.save
          return
        elsif name.include?("rapeseed")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Rapeseed Oil")
          self.save
          return
        elsif name.include?("olive")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Olive Oil")
          self.save
          return
        end
      end

      return if name.include?("oil")
      return if self.greenhouse_gass

      name.each do |na|
        if na.match?("corn") || na.match?("masa") || na.match?("polenta") || na.match?("grits")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Maize (Meal)")
          self.save
          return
        elsif na.match?("oats") || na.match?("oat")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Oatmeal")
          self.save
          return
        elsif na.match?("potato")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Potatoes")
          self.save
          return
        elsif na.match?("yuca")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Cassava")
          self.save
          return
        elsif na.match?("bean") || na.match?("beans") || na.match?("chickpeas") || na.match?("lentil")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Other Pulses")
          self.save
          return
        elsif na.match?("pea")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Peas")
          self.save
          return
        elsif na.match?("peanut")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Groundnuts")
          self.save
          return
        elsif na.match?("nut") || na.match?("cashew") || na.match?("pecan") || na.match?("almond") || na.match?("pistachio") || na.match?("piñon")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Nuts")
          self.save
          return
        elsif na.match?("tomato")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Tomatoes")
          self.save
          return
        elsif na.match?("broccoli") || na.match?("turnip") || na.match?("kohlrabi") || na.match?("collard") || na.match?("kale") || na.match?("cauliflower") || na.match?("brussel sprouts") || na.match?("cabbage") || na.match?("greens")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Brassicas")
          self.save
          return
        elsif na.match?("garlic")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Onions & Leeks")
          self.save
          return
        elsif na.match?("potato") || na.match?("yam") || na.match?("beet") || na.match?("taro") || na.match?("lotus") || na.match?("turmeric") || na.match?("ginger") || na.match?("raddish") || na.match?("carrot")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Root Vegetables")
          self.save
          return
        elsif na.match?("lettuce") || na.match?("mushroom")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Other Vegetables")
          self.save
          return
        elsif na.match?("orange") || na.match?("lemon") || na.match?("lime") || na.match?("grapefruit") || na.match?("pomelo")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Citrus Fruit")
          self.save
          return
        elsif na.match?("banana")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Bananas")
          self.save
          return
        elsif na.match?("apple")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Apples")
          self.save
          return
        elsif na.match?("berry") || na.match?("grape")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Berries & Grapes")
          self.save
          return
        elsif na.match?("pear") || na.match?("peach") || na.match?("plum") || na.match?("appricot") || na.match?("persimon") || na.match?("melon") || na.match?("cantaloupe")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Other Fruit")
          self.save
          return
        elsif na.match?("steak") || na.match?("hamburger") || na.match?("pastrami") || na.match?("mignon")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Beef (beef herd)")
          self.save
          return
        elsif na.match?("ham") || na.match?("pork") || na.match?("bacon")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Pig Meat")
          self.save
          return
        elsif na.match?("chicken") || na.match?("turkey") || na.match?("duck")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Poultry Meat")
          self.save
          return
        elsif na.match?("egg") || na.match?("mayonnaise") || na.match?("mayo")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Eggs")
          self.save
          return
        elsif na.match?("trout") || na.match?("salmon") || na.match?("cod") || na.match?("pollock") || na.match?("tuna") || na.match?("sardine") || na.match?("grouper") || na.match?("mahi") || na.match?("talapia")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Fish (farmed)")
          self.save
          return
        elsif na.match?("shrimp") || na.match?("prawn")
          self.greenhouse_gass = GreenhouseGass.find_by(product: "Prawns (farmed)")
          self.save
          return
        elsif ghg.product.downcase.gsub(/[^a-z\s]/, "").split(" ").include?(na)
          self.greenhouse_gass = ghg
          self.save
          return
        end
      end
    end
  end

  #get rid of parentheticals in ghg prodcut name
  def find_water_product
    return unless self.greenhouse_gass&.product
    product = self.greenhouse_gass.product
    self.water_use = WaterUse.find_by(product: product.gsub(/\(.*\)/, "").strip) || WaterUse.find_by(product: product)
    self.save
  end

  #get rid of parentheticals in ghg prodcut name
  def find_eut_product
    return unless self.greenhouse_gass&.product
    product = self.greenhouse_gass.product
    self.eutrophication = Eutrophication.find_by(product: product.gsub(/\(.*\)/, "").strip) || Eutrophication.find_by(product: product)
    self.save
  end
end
