# THE JOIN TABLE --> I KNOW IT'S BORN W AN INSTANCE OF THE TWO OTHER CLASSES
class Role

  attr_accessor :name, :earnings
  attr_reader :actor, :movie
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
