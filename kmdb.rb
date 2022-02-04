# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Role.destroy_all


# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

person1 = Person.new
person1.name = "Christopher Nolan"
person1.save

person2 = Person.new
person2.name = "Christian Bale"
person2.save

person3 = Person.new
person3.name = "Michael Caine"
person3.save

person4 = Person.new
person4.name = "Liam Neeson"
person4.save

person5 = Person.new
person5.name = "Katie Holmes"
person5.save

person6 = Person.new
person6.name = "Gary Oldman"
person6.save

person7 = Person.new
person7.name = "Heath Ledger"
person7.save

person8 = Person.new
person8.name = "Aaron Eckhart"
person8.save

person9 = Person.new
person9.name = "Maggie Gyllenhaal"
person9.save

person10 = Person.new
person10.name = "Tom Hardy"
person10.save

person11 = Person.new
person11.name = "Joseph Gordon-Levitt"
person11.save

person12 = Person.new
person12.name = "Anne Hathaway"
person12.save

nolan = Person.where({name: "Christopher Nolan"})[0]
nolan_id = nolan.id

movie1 = Movie.new
movie1.title = "Batman Begins"
movie1.year = 2005
movie1.rated = "PG-13"
movie1.director_id = nolan_id
movie1.save

movie2 = Movie.new
movie2.title = "The Dark Knight"
movie2.year = 2008
movie2.rated = "PG-13"
movie2.director_id = nolan_id
movie2.save

movie3 = Movie.new
movie3.title = "The Dark Knight Rises"
movie3.year = 2012
movie3.rated = "PG-13"
movie3.director_id = nolan_id
movie3.save

batman_begins = Movie.where({title: "Batman Begins"})[0]
the_dark_knight = Movie.where({title: "The Dark Knight"})[0]
the_dark_knight_rises = Movie.where({title: "The Dark Knight Rises"})[0]

cbale = Person.where({name: "Christian Bale"})[0]
mcaine = Person.where({name: "Michael Caine"})[0]
lneeson = Person.where({name: "Liam Neeson"})[0]
kholmes = Person.where({name: "Katie Holmes"})[0]
goldman = Person.where({name: "Gary Oldman"})[0]
hledger = Person.where({name: "Heath Ledger"})[0]
aeckhart = Person.where({name: "Aaron Eckhart"})[0]
mgyllenhaal = Person.where({name: "Maggie Gyllenhaal"})[0]
thardy = Person.where({name: "Tom Hardy"})[0]
jglevitt = Person.where({name: "Joseph Gordon-Levitt"})[0]
ahathaway = Person.where({name: "Anne Hathaway"})[0]

role1 = Role.new
role1.movie_id = batman_begins.id
role1.actor_id = cbale.id
role1.character_name = "Bruce Wayne"
role1.save


role2 = Role.new
role2.movie_id = batman_begins.id
role2.actor_id = mcaine.id
role2.character_name = "Alfred"
role2.save

role3 = Role.new
role3.movie_id = batman_begins.id
role3.actor_id = lneeson.id
role3.character_name = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4.movie_id = batman_begins.id
role4.actor_id = kholmes.id
role4.character_name = "Rachel Dawes"
role4.save

role5 = Role.new
role5.movie_id = batman_begins.id
role5.actor_id = goldman.id
role5.character_name = "Commissioner Gordon"
role5.save

role1 = Role.new
role1.movie_id = the_dark_knight.id
role1.actor_id = cbale.id
role1.character_name = "Bruce Wayne"
role1.save

role2 = Role.new
role2.movie_id = the_dark_knight.id
role2.actor_id = hledger.id
role2.character_name = "Joker"
role2.save

role3 = Role.new
role3.movie_id = the_dark_knight.id
role3.actor_id = aeckhart.id
role3.character_name = "Harvey Dent"
role3.save

role4 = Role.new
role4.movie_id = the_dark_knight.id
role4.actor_id = mcaine.id
role4.character_name = "Alfred"
role4.save

role5 = Role.new
role5.movie_id = the_dark_knight.id
role5.actor_id = mgyllenhaal.id
role5.character_name = "Rachel Dawes"
role5.save

role1 = Role.new
role1.movie_id = the_dark_knight_rises.id
role1.actor_id = cbale.id
role1.character_name = "Bruce Wayne"
role1.save

role2 = Role.new
role2.movie_id = the_dark_knight_rises.id
role2.actor_id = goldman.id
role2.character_name = "Commissioner Gordon"
role2.save

role3 = Role.new
role3.movie_id = the_dark_knight_rises.id
role3.actor_id = thardy.id
role3.character_name = "Bane"
role3.save

role4 = Role.new
role4.movie_id = the_dark_knight_rises.id
role4.actor_id = jglevitt.id
role4.character_name = "John Blake"
role4.save

role5 = Role.new
role5.movie_id = the_dark_knight_rises.id
role5.actor_id = ahathaway.id
role5.character_name = "Selina Kyle"
role5.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
