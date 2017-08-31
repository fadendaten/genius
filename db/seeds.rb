# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = [
  {
    name: "German",
    i18n_code: "de"
  },
  {
    name: "English",
    i18n_code: "en"
  },
  {
    name: "French",
    i18n_code: "fr"
  },
  {
    name: "Italian",
    i18n_code: "it"
  },
]
Language.create(languages)

countries = [
  {:name=>"Switzerland", :code=>"CH"},
  {:name=>"Liechtenstein", :code=>"LI"},
  {:name=>"Belgium", :code=>"BE"},
  {:name=>"Bulgaria", :code=>"BG"},
  {:name=>"Denmark", :code=>"DK"},
  {:name=>"Germany", :code=>"DE"},
  {:name=>"Estonia", :code=>"EE"},
  {:name=>"Finland", :code=>"FI"},
  {:name=>"France", :code=>"FR"},
  {:name=>"Greece", :code=>"GR"},
  {:name=>"Ireland", :code=>"IE"},
  {:name=>"Italy", :code=>"IT"},
  {:name=>"Latvia", :code=>"LV"},
  {:name=>"Lithuania", :code=>"LT"},
  {:name=>"Luxembourg", :code=>"LU"},
  {:name=>"Malta", :code=>"MT"},
  {:name=>"Netherlands", :code=>"NL"},
  {:name=>"Austria", :code=>"AT"},
  {:name=>"Poland", :code=>"PL"},
  {:name=>"Portugal", :code=>"PT"},
  {:name=>"Romania", :code=>"RO"},
  {:name=>"Sweden", :code=>"SE"},
  {:name=>"Slovakia", :code=>"SK"},
  {:name=>"Slovenia", :code=>"SI"},
  {:name=>"Spain", :code=>"ES"},
  {:name=>"Czech Republic", :code=>"CZ"},
  {:name=>"Hungary", :code=>"HU"},
  {:name=>"United Kingdom", :code=>"GB"},
  {:name=>"Cyprus", :code=>"CY"},
  {:name=>"Norway", :code=>"NO"},
  {:name=>"Canada", :code=>"CA"},
  {:name=>"Israel", :code=>"IL"},
  {:name=>"Russia", :code=>"RU"},
  {:name=>"Südafrika", :code=>"ZA"}
]
Country.create(countries)

genders = [
  {name: "unknown"},
  {name: "male"},
  {name: "female"},
  {name: "multigender"}
]

Gender.create(genders)

# products = [
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067326797",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "XS",
#     colour: "almond",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067813198",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "M",
#     colour: "almond",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067212915",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "L",
#     colour: "almond",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067017633",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "XL",
#     colour: "almond",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067164207",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "XS",
#     colour: "stone",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067082808",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "S",
#     colour: "stone",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067082808",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "M",
#     colour: "stone",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067102025",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "L",
#     colour: "stone",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   },
#   {
#     name: "blazer",
#     number: "F14937",
#     ean: "7613067003711",
#     collection: "1/17",
#     program: "COLLECTION I COTTON",
#     size: "XL",
#     colour: "stone",
#     price_chf: "259.00",
#     price_eur: "219.00"
#   }
# ]
# products = Product.create(products)

