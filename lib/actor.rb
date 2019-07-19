class Actor
  attr_accessor :rank, :age
  attr_reader :name

  @@all = []

  def initialize(params)
    @name = params[:name]
    @age = params[:age]
    @rank = params[:rank]

    @@all << self
  end

  # INSTANCE METHODS
  def sign_contract(movie, char_name, earnings)
    role_hash = {actor: self, movie: movie, name: char_name, earnings: earnings}
    Role.new(role_hash)
  end

  def total_roles
    my_roles.count
  end

  def my_roles
    Role.all.select do |role|
      role.actor == self
    end
  end

  def movies
    # USE THE HELPER!!!!!!
    my_roles.map { |role| role.movie  }
  end

  def blockbusters
    # use movies bc it has all the movie objects this actor is in
    # movies.select { |movie| movie.box_office > 50000000 }
    movies.select { |movie| Movie.blockbusters.include?(movie) }
  end

  def total_earnings
    # need to know their roles
    my_roles.reduce(0) do |sum, role|
      # need the earnings
      # and movie instances box_office
      sum + (role.earnings * role.movie.box_office)
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.average_age
    sum_of_ages = Actor.all.reduce(0) do |sum, actor|
      sum + actor.age
    end
    sum_of_ages.to_f/Actor.all.length
  end

  def self.a_list
    # Actor.all also works
    # matt says to use self only
    self.all.select do |actor_inst|
      actor_inst.rank == "A"
    end
  end

  def self.most_successful
    # sorted_actors = self.all.sort_by do |actor_inst|
    #   actor_inst.total_earnings
    # end
    # sorted_actors[-1]
    self.all.max_by do |actor_inst|
      actor_inst.total_earnings
    end
  end

end # end of Actor class
