# FlatMDb - the Flatiron Movie Database

Welcome to FlatMDb, our awesome movie database! We have three models - `Movie`, `Actor`, and `Role`. A `Movie` has many `Actor`s through `Role`s.

**Before you start** - sketch out the domain models, and think about how they connect.

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code as well as some seed data. To enter a console session, run `ruby run.rb` from the command line. You'll be able to test out the methods that you write here.

**Remember!** This is a code challenge without tests. You cannot run `rspec` you cannot run `learn`. Make sure your associations and methods work in the console before submitting.

## Deliverables

### Basic Class Methods and Properties

#### Build the following methods on the `Actor` class

<!-- - `Actor#name`
  - returns a **string** that is the actor's name
  - Once an actor is created, their name cannot be changed.
- `Actor#age`
  - returns an **integer** for the actor's age
- `Actor#rank`
  - returns a **string** representing the actor's rank
  - valid ranks are: "A", "B", "C", "D", and "E" -->
<!--
- `Actor.all`
  - should return **all** of the actor instances -->
<!-- - `Actor.average_age`
  - should return the average age of **all** actors in the database -->
<!-- - `Actor.a_list`
  - should return an **array** of all actors with a rank of "A" -->

  <!-- DO THIS LAST -->
- **BONUS** `Actor#lie_about_age`
  - given an integer of an **age**, change the actor's age AND rank
  - if the new age is higher than their actual age, their rank should go down; if it's lower, their rank should go up

---

#### Build the following methods on the Movie class

<!-- - `Movie#title`
  - returns a **string** that is the movie's title
- `Movie#year`
  - returns an **integer** that is the year the movie was released
- `Movie#box_office`
  - returns a **integer** that is the amount of money the movie made at the box office -->

<!-- - `Movie#same_decade`
  - return an **array** of movies from the same decade as this movie instance -->
<!-- - `Movie.all`
  - returns an **array** of all the movies -->
<!-- - `Movie.blockbusters`
  - return an **array** of all movies that made over $50 mil -->
<!-- - `Movie.box_office_total_by_year`
  - Given a year, return an **integer** representing the sum of all the movies' box office earnings in a given year -->

---

#### Build out the following methods on the `Role` class
<!--
- `Role#actor`
  - returns the actor object for that given role
  - Once a role is created, I should not be able to change the actor
- `Role#movie`
  - returns the movie object for that given role
  - Once a role is created, I should not be able to change the movie -->
<!-- - `Role#name`
  - returns a **string** that is the character's name
- `Role#earnings`
  - returns a **number** representing the percentage of the movie's box office earnings that the actor gets paid
  - This should be a float that is not a negative number.
- `Role.all`
  - returns all of the roles -->

---

### Associations and Aggregate Methods

#### Actor

<!-- - `Actor#sign_contract`
  - given a **movie object**, character name (as a string), and their earnings percentage (as a float), creates a new role and associates it with that movie and actor. -->
<!-- - `Actor#total_roles`
  - Returns the total number of roles that the actor has had -->
<!-- - `Actor#movies`
  - Returns all the movie instances the actor has been in -->
<!-- - `Actor#blockbusters`
  - Returns all the movie instances the actor has been in that made over $50 mil -->
- `Actor#total_earnings`
  - Returns a number representing the actor's total earnings for all their roles
  - HINT: you will have to calculate the actor's earning for each role using their earnings percentage and the movie's box office total
- `Actor.most_successful`
  - Return the actor whose films have made the most money

#### Movie

- `Movie#cast_role`
  - given an **actor instance**, character_name, and earnings, create a new role for them in this film
- `Movie#stars_by_rank`
  - return a list of actors in this movie sorted by their rank
