# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

user=User.new(:email=>'admin@admin.com',:name=>'admin',:password=>'password', :role=>'admin')
user.skip_confirmation!
user.save!

user2=User.new(:email=>'bob@user.com',:name=>'Bob Bobby',:password=>'password', :role=>'user')
user.skip_confirmation!
user.save!