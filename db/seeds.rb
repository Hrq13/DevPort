# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
    @index = blog + 1
    Blog.create!(
        title: "##{@index} blog post",
        body: "Body of my ##{@index}"
    )
end

puts "10 blog posts created"

5.times do |skill|
    @index = skill + 1
    Skill.create!(
        title: "##{@index} skill",
        percent_utilized: 15
    )
end

puts "5 blog posts created"

9.times do |portfolio_item|
    @index = portfolio_item + 1
    Portfolio.create!(
        title: "##{@index} portfolio item",
        subtitle: "portfolio subtitle",
        body: "portfolio body",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"
