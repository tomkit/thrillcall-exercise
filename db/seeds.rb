# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Movie.delete_all
[{ "title" => 'test movie 1', "actor" => 'test actor 1'}, { "title" => 'test movie 1', "actor" => 'test actor 2'},
{ "title" => 'test movie 2', "actor" => 'test actor 2'}, { "title" => 'test movie 2', "actor" => 'test actor 3'},
{ "title" => 'test movie 3', "actor" => 'test actor 3'}, { "title" => 'test movie 3', "actor" => 'test actor 4'},
{ "title" => 'test movie 4', "actor" => 'test actor 5'}].each do |tuple|
  Movie.create(:title => tuple["title"], :actor => tuple["actor"])
end
