require 'ffaker'

puts 'Emptying data'
Member.delete_all
Friendship.delete_all
Profile.delete_all
Header.delete_all
Tag.delete_all

puts 'Insert Members...'
m1 = Member.create!(name: FFaker::Name.name, website_url: FFaker::Internet.http_url)
m2 = Member.create!(name: FFaker::Name.name, website_url: FFaker::Internet.http_url)
m3 = Member.create!(name: FFaker::Name.name, website_url: FFaker::Internet.http_url)


puts 'Making friends...'
f1 = Friendship.create!(member: m1, friend: m2)
f2 = Friendship.create!(member: m3, friend: m2)

puts 'Inserting Headers...'
h1 = Header.create!(index: "1")
h2 = Header.create!(index: "2")
h3 = Header.create!(index: "3")

puts 'Insert Profile...'
p1 = Profile.create!(member: m1)

puts 'Insert Tags...'
t1 = Tag.create!(text: FFaker::Lorem.sentence, taggable_id: h1.id, taggable_type: "Header")
t2 = Tag.create!(text: FFaker::Lorem.sentence, taggable_id: h2.id, taggable_type: "Header")
t3 = Tag.create!(text: FFaker::Lorem.sentence, taggable_id: h3.id, taggable_type: "Header")

p1.tags << [t1, t2, t3]
