class User
  attr_accessor :pinned
  attr_reader :summary

  def initialize
    @summary = []
    @pinned	= []
  end
end
