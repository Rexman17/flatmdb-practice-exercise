class Movie
  attr_accessor :title, :year, :box_office
  @@all = []

  def initialize(params)
    @title = params[:title]
    @year = params[:year]
    @box_office = params[:box_office]
    Movie.all << self
  end

  # INSTANCE METHODS
  def same_decade
    # Movie.all.select do |movie|
    #   movie.year.between?(self.year - 5, self.year + 5)
    # end

    Movie.all.select do |movie|
      self.year.floor(-1) == movie.year.floor(-1) && movie != self
    end
  end

  def cast_role(actor_inst, char_name, earnings)
    Role.new(actor: actor_inst, movie: self, name: char_name, earnings: earnings)
  end

  def roles
    Role.all.filter do |role|
      role.movie == self
    end
  end

  def actors
    roles.map do |role|
      role.actor
    end
  end

  def stars_by_rank
    # get all the roles
    # get get all the actors
    # sort by rank
    actors.sort_by do |actor|
      actor.rank
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.blockbusters
    Movie.all.select do |movie_instance|
      movie_instance.box_office > 50000000
    end
  end

  def self.box_office_total_by_year(year)
    # can chain or create a variable and save it to the select iteration
    movies_from_this_year = self.all.select do |movie|
      movie.year == year
    end
    movies_from_this_year.map { |movie|  movie.box_office }.sum
  end

end # end of Movie class
