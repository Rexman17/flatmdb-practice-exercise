class Actor

  attr_accessor :name, :age, :rank
  @@all = []

  def initialize(params)
    @name = params[:name]
    @age = params[:age]
    @rank = params[:rank]

    @@all << self
  end

  # INSTANCE METHODS

  def sign_contract(movie_obj, name, earnings)
    # create a new role
    Role.new(actor: self, movie: movie_obj, name: name, earnings: earnings)
  end

  def total_roles
    Role.all.select do |role|
      role.actor == self
    end.count
  end

  def roles
    Role.all.select do |role|
      role.actor == self
    end
  end

  def movies
    Role.all.select do |role|
      role.actor == self
    end.map { |role| role.movie  }
  end

  def blockbusters
    # use movies method above
    movies.select do |movie|
      movie.box_office > 50000000
    end
  end

  def total_earnings
    roles.map { |role| role.movie.box_office * role.earnings }.reduce(:+)
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.average_age
    ages = Actor.all.map { |actor| actor.age  }
    ages.reduce(:+)/Actor.all.length
  end

  def self.a_list
    Actor.all.select { |actor| actor.rank == "A" }
  end

  def self.most_successful
    # max of the total earnings
    Actor.all.max { |a, b| a.total_earnings <=> b.total_earnings }

  end

end # end of Actor class
