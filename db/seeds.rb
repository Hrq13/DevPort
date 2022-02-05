# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |t|
    Topic.create!(title: "Topic ##{t}")
end

puts "3 topics were created"

10.times do |blog|
    @index = blog + 1
    Blog.create!(
        title: "##{@index} blog post",
        body: "Body of my ##{@index}",
        topic_id: Topic.last.id
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

8.times do |portfolio_item|
    @index = portfolio_item + 1
    Portfolio.create!(
        title: "##{@index} portfolio item",
        subtitle: "Ruby On Rails",
        body: "portfolio body",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "##{Portfolio.all.count + 1} portfolio item",
        subtitle: "Angular",
        body: "portfolio body",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"
