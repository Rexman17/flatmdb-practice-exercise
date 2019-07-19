class Movie

  attr_accessor :title, :year, :box_office
  @@all = []

  def initialize(params)
    @title = params[:title]
    @year = params[:year]
    @box_office = params[:box_office]
    @@all << self
  end

  # INSTANCE METHODS
  def same_decade
    lowerBound = self.year - 5
    upperBound = self.year + 5
    Movie.all.select do |movie|
      if movie != self && lowerBound <= movie.year && upperBound >= movie.year
        movie
      end
    end
  end

  def cast_role(actor_obj, name, earnings)
    Role.new(actor: actor_obj, movie: self, name: name, earnings: earnings)
  end

  def stars_by_rank
    actors = Role.all.select do |role|
      role.movie == self
    end.map { |role|  role.actor }.sort_by { |a| [a.rank, a.rank] }

    # sort them
  end


  # CLASS METHODS
  def self.all
    @@all
  end

  def self.blockbusters
    Movie.all.select do |movie|
      movie.box_office > 50000000
    end
  end

  def self.box_office_total_by_year(year)
    # find movies in that year
    Movie.all.select do |movie|
      movie.year == year
    end.map { |movie|  movie.box_office }.reduce(:+)
  end

end # end of Movie class
