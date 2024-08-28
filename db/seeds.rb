# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
3.times do |topic|
    Topic.create!(title: "Topic #{topic}")
end

puts "3 Topics Created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        topic_id: Topic.last.id
    )
    
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio Title #{portfolio_item}",
        subtitle: "Ruby On Rails",
        body: "this is the body: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        #main_image: "https://place-hold.it/600x400", # This is the old way of seeding the main_image. With carrierWave you'll need to use remote_[your_image_attribute_name]_url = "some image URL"
        remote_main_image_url: "https://place-hold.it/600x400",
        #thumb_image: "https://place-hold.it/200x200"
        remote_thumb_image_url: "https://place-hold.it/200x200"
    )
end
puts "8 portfolios created"

1.times do |portfolio_item|
    temp =  Portfolio.new(
        title: "Portfolio Title #{portfolio_item + 1}",
        subtitle: "Angular",
        body: "this is the body: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        remote_main_image_url: "https://place-hold.it/600x400",
        remote_thumb_image_url: "https://place-hold.it/200x200"
    )

    temp.save!
end
puts "1 portfolios created"

3.times do |technology_item|
    Technology.create!(
        name: "Technology #{technology_item + 1}",
        portfolio_id: Portfolio.last.id
    )

    Technology.create!(
        name: "Technology #{technology_item + 1}",
        portfolio_id: Portfolio.first.id
    )
end
puts "3 technologies created"


