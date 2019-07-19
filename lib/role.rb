class Role

  attr_accessor :actor, :movie, :name, :earnings
  @@all = []

  def initialize(params)
    @actor = params[:actor]
    @movie = params[:movie]
    @name = params[:name]
    @earnings = params[:earnings]
    @@all << self
  end

  def self.all
    @@all
  end

end # end of Role class
