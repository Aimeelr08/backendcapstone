# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post_attributes = [
  { title: "Once upon at time", body: "Today was a good day that I had a good time listening to music. This boy gave me a sandwich and said let's get a coffee. I thought it was coffeescript but here he gave a good cup of tea." },
  { title: "Time to study", body: "time to get a dent into the study workload it has been a long time to keep on typing this here so that I enjoy making this post so great" },
  { title: "This lovely day", body: "what a beautiful and lovely day it was today! I had a great time going to that place we went that time when you know what I can only explain it so much as this moment I am about to eat." },
]

post_attributes.each do |attributes|
  Post.where(attributes).first_or_create
end

comment_attributes = [
  { content: "wonderful page you have here!", post_id: Post.first.id },
  { content: "you have a good heart", post_id: Post.first.id },
  { content: "This is the best!", post_id: Post.last.id },
]

comment_attributes.each do |attributes|
  Comment.where(attributes).first_or_create
end
