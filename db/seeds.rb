# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

Beer.delete_all
Brewery.delete_all
Page.delete_all

Page.create(
  title: "About The Won Tuan",
  content: "This is a brewering retailer.",
  permalink: "about_us"
)

Page.create(
  title: "Contact Us",
  content: "Please contact us.",
  permalink: "contact_us"
)


filename = Rails.root.join("top_beers.csv")

puts "Loading Beers from the CSV file: #{filename}"

csv_data = File.read(filename)

beers = CSV.parse(csv_data, headers: true, encoding: "utf-8")

beers.each  do | b |
  brewery  = Brewery.find_or_create_by(name: b["brewery_name"])

  if brewery && brewery.valid?
    beer = brewery.beers.create(
      name: b["beer_name"],
      review_time: b["review_time"],
      review_score: b["review_overall"],
      alcohol_percent: b["beer_abv"]
    )
    puts "invalid #{b["beer_name"]}" unless beer&.valid?
  else
    puts "invalid brewery #{b["brewery_name"]} for #{b["beer_name"]}."

  end
end

puts "Created #{Brewery.count} Breweries"

puts "Created #{Beer.count} Beers"