# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Topic.delete_all

user=User.new(:email=>'admin@admin.com',:name=>'admin',:password=>'password', :role=>'admin')
user.skip_confirmation!
user.save!

# user2=User.new(:email=>'bob@user.com',:name=>'Bob Bobby',:password=>'password', :role=>'user')
# user.skip_confirmation!
# user.save!

# Topic.create(:question=>"How can i turn better?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"How can i turn left better?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"My turning is shite why ?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"Which is the best board for turning?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"what does carving mean  ?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"how can i turn left", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"turn right?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"how can i stop myself turning when i dont want to?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"turning with power?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"i want to do deep powerful turning?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"which fins should i get so i can turn easier?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>"turning on a long board compared to turning on a shortboard?", :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)
# Topic.create(:question=>Faker::Lorem.sentence(10), :added_video=>"0", :user_id=>1, :is_complete => true)




