# Foodprint-API
This project is an api that holds recipes, with thier assoicated ingredients and the life time greenhouse gas emmisions, water use and eutrophication of those ingrdients. This project operates as an api for the FoodPrint trakcer app: https://github.com/wlytle/foodprint-front-end. For this api to properly serve FoodPrint front end it must be hosted on `http://localhost:3000` This api can work indepenedlty however, in it's current form it is only set to respond to HTTP requests from `localhost:3000`. The api is built with `Ruby 2.6.1` using `Rails 6.0.3`.

## Installation 
Fork and clone this repo then run `bundle install`. You can launch the server by running `rails s`

## use

This API responds to the following endpoints with  the following data

* `GET /ingredients` shows *all* ingredients with associated emissions data if it exists
```json
{
    "id": 134,
    "name": "boneless skinless chicken breasts",
    "greenhouse_gass": {
      "product": "Poultry Meat",
      "land_use_change": "2.5",
      "packaging": "0.2",
      "animal_feed": "1.8",
      "farm": "0.7",
      "processing": "0.4",
      "transport": "0.3",
      "retail": "0.2"
    },
    "water_use": {
      "product": "Poultry Meat",
      "use": "660"
    },
    "eutrophication": {
      "product": "Poultry Meat",
      "eutrophication": "48.7"
    }
  },
  ...
```

* `GET /ingredients/:id` Will show the same data as above data for the single recipe indicated by the id.

* `GET /recipie_ingredients` Will show the data connecting a recipe and an ingredient, quantity, units, .etc as well as all of the above data relating to the ingredient

```json
{
  "id": 783,
  "quantity": "0.75",
  "unit": "cup",
  "whole_line": "3/4 cup granulated sugar (150g per 3/4 cup)",
  "ingredient_type": {
    "id": 16,
    "name": "Baking & Cooking",
    "created_at": "2020-12-08T00:52:23.059Z",
    "updated_at": "2020-12-08T00:52:23.059Z"
  },
  "ingredient": {
    ...
```
* `GET /recipe_ingredient/types/:id` This route takes a `recipe_ingredient` id and will dispaly an array of all the ingredients that have the same ingredient_type

* `PATCH /recipie_ingredients/:id` This route will replace the recipe_ingredient given by `:id` with a new recipe ingredient given by an id in the body of the request. The body of the request must match the following: `{ new_ingredient: ingredient_id }`

* `DELETE /recipie_ingredients/:id` This will delete the recipe_ingredient given by `:id`

* `GET /recipes/:id` This route will provide a list of all recipes in the following format: 

```json
[
  {
    "id": 56,
    "title": "Salted Caramel Thumbprint Cookies",
    "public": true
  },
  ...
```
* `GET /recipes/:id` This route will provide a single recipe in the format:

```json
{
  "id": 56,
  "title": "Salted Caramel Thumbprint Cookies",
  "instructions": "Line two baking sheets ..." ,
  "yield": 24,
  "public": true,
  "image": "https://lh3.googleusercontent.com/6Mwold8G7Z_Wn8oNqEz9d0At9CcKBL8oJGmL43WqSpVxdxQ8nn2jOJjyJc_AgzP8k13jw8-LjVoScfpeSnVZaA",
  "recipe_ingredients": [
    {
      "id": 332,
      "quantity": "1.0",
      "unit": "cup",
      "whole_line": "1 cup unsalted butter, softened)",
      "ingredient_type": {
        "id": 19,
        "name": "Dairy",
        "created_at": "2020-12-08T00:52:23.490Z",
        "updated_at": "2020-12-08T00:52:23.490Z"
      },
      "ingredient": {
        "id": 169,
        "name": "unsalted butter",
        "greenhouse_gass_id": null,
        "water_use_id": null,
        "eutrophication_id": null,
        "created_at": "2020-12-08T18:21:05.196Z",
        "updated_at": "2020-12-08T18:21:05.196Z"
      }
    },
    ...
```
* `POST /recipes` This route will create a new recipe entry in the database along with its correspondng recipe_ingredients. It will also create new record for ingredients if htey don't already exist in the database and associate those with thier corresponding emissions data if they exist. This rout will respond iwl the same data structure as above and must have a body of the form:

``` json
{ 
    "title": "currentTarget.title.value.trim()",
    "yield": "servin_number",
    "instructions": "instructions",
    "public": "publicly_abailable_boolean",
    "image": "image_url",
    "ingredients": [
        { 
            "ingredient": "name_of_ingredient",
            "quantity": "quantity_number",
            "unit": "units_of_quantity",
            "ingredient_type": "ingredient_type_string"
        },
        ...
    ]
}
```

* `PATCH /recipes/:id` This route takes and returns the smae data structures as above and updates the recipe corresponding to `:id` with the data provided.

* ` DELETE /recipes/:id` This route will delete the recipe corrsponding to `:id`

### Data
 Data used in this project from: Hannah Ritchie (2020) - "Environmental impacts of food production". Published online at OurWorldInData.org. Retrieved from: 
     'https://ourworldindata.org/environmental-impacts-of-food' [Online Resource] 