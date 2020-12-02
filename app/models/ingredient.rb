class Ingredient < ApplicationRecord
  belongs_to :greenhouse_gass, optional: true
  belongs_to :water_use, optional: true
  belongs_to :eutrophication, optional: true
  belongs_to :ingredient_type, optional: true
  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients

  #associate ingredients with emiisions data categories
  def find_ghg_product
    #make name an array containg only alpha chars
    name = self.name.downcase.gsub(/[^a-z\s]/, "").split(" ")
    GreenhouseGass.all.each do |ghg|
      return if self.greenhouse_gass
      name.each do |na|
        byebug
        if ghg.product.downcase.gsub(/[^a-z\s]/, "").split(" ").include?(na)
          self.greenhouse_gass = ghg
          return
        elsif na.match?("corn") || na.match?("masa") || na.match?("polenta") || na.match?("grits")
          self.ghg = GreenhouseGass.find_by(product: "Maize (Meal)")
          return
        elsif na.match?("oats") || na.match?("oat")
          self.ghg = GreenhouseGass.find_by(product: "Oatmeal")
          return
        elsif na.match?("potato")
          self.ghg = GreenhouseGass.find_by(product: "Potatoes")
          return
        elsif na.match?("yuca")
          self.ghg = GreenhouseGass.find_by(product: "Cassava")
          return

        elsif na.match?("bean") || na.match?("beans") || na.match?("chickpeas") || na.match?("lentil")
          self.ghg = GreenhouseGass.find_by(product: "Other Pulses")
          return

        elsif na.match?("pea")
          self.ghg = GreenhouseGass.find_by(product: "Peas")
          return
          
        elsif na.match?("peanut")
          self.ghg = GreenhouseGass.find_by(product: "Groundnuts")
          return

        elsif na.match?("nut") || na.match?("cashew") || na.match?("pecan") || na.match?("almond") || na.match?("pistachio") || na.match?("piñon")
          self.ghg = GreenhouseGass.find_by(product: "Nuts")
          return


        elsif na.match?("tomato")
          self.ghg = GreenhouseGass.find_by(product: "Tomatoes")
          return

        elsif na.match?("garlic") || na.match?("beans") || na.match?("chickpeas") || na.match?("lentil") || na.match?("lentils")
          self.ghg = GreenhouseGass.find_by(product: "Other Pulses")
          return

        elsif na.match?("broccoli") || na.match?("turnip") || na.match?("kohlrabi") || na.match?("collard") || na.match?("kale") || na.match?("cauliflower") || na.match?("brussel sprouts") || na.match?("cabbage") || ("greens")
          self.ghg = GreenhouseGass.find_by(product: "Brassicas")
          return

        elsif na.match?("garlic")
          self.ghg = GreenhouseGass.find_by(product: "Onions & Leeks")
          return

        elsif na.match?("potato") || na.match?("yam") || na.match?("beet") || na.match?("taro") || na.match?("lotus") || na.match?("turmeric") || na.match?("ginger") || na.match?("raddish") || na.match?("carrot")
          self.ghg = GreenhouseGass.find_by(product: "Root Vegetables")
          return

        elsif na.match?("lettuce") || na.match?("mushroom")
          self.ghg = GreenhouseGass.find_by(product: "Other Vegetables")
          return

        elsif na.match?("orange") || na.match?("lemon") || na.match?("lime") || na.match?("grapefruit") || na.match?("pomelo")
          self.ghg = GreenhouseGass.find_by(product: "Citrus Fruit")
          return

        elsif na.match?("banana")
          self.ghg = GreenhouseGass.find_by(product: "Bananas")
          return

        elsif na.match?("apple")
          self.ghg = GreenhouseGass.find_by(product: "Apples")
          return

        elsif na.match?("berry") || na.match?("grape") 
          self.ghg = GreenhouseGass.find_by(product: "Berries & Grapes")
          return

        elsif na.match?("pear") || na.match?("peach") || na.match?("plum") || na.match?("appricot") || na.match?("persimmon") || na.match?("melon") || na.match?("cantaloupe") 
          self.ghg = GreenhouseGass.find_by(product: "Other Fruit")
          return
          
        elsif na.match?("berry") || na.match?("grape") 
          self.ghg = GreenhouseGass.find_by(product: "Berries & Grapes")
          return
        elsif na.match?("berry") || na.match?("grape") 
          self.ghg = GreenhouseGass.find_by(product: "Berries & Grapes")
          return

      end
    end

    #   name = self.name.downcase
    #   if name.match?("bread") || name.match?("wheat") || name.match?("rye")
    #     self.greenhouse_gass = GreenhouseGass.find_by(product: "Wheat & Rye (Bread)")
    #   elsif puts "eslif"
    #     elsputs "else"
    #   end
  end
end
