class User
  attr_accessor :name, :nickname, :work, :bio, :location, :website, :pinned, :summary

  def initialize
    @summary = []
    @pinned	= []
  end
end
