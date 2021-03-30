require 'ffaker'

puts 'Emptying data'
Member.delete_all
Friendship.delete_all

puts 'Insert Members...'
m1 = Member.create!(name: FFaker::Name.name, website_url: FFaker::Internet.http_url)
m2 = Member.create!(name: FFaker::Name.name, website_url: FFaker::Internet.http_url)
m3 = Member.create!(name: FFaker::Name.name, website_url: FFaker::Internet.http_url)


puts 'Making friends...'
f1 = Friendship.create!(member: m1, friend: m2)
f2 = Friendship.create!(member: m3, friend: m2)
