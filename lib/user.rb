#  rubocop: disable Lint/RedundantCopDisableDirective
#  rubocop: disable Layout/Tab
class User
  attr_accessor :name, :nickname, :work, :bio, :location, :website, :pinned, :summary

  def initialize
    @summary = []

    @pinned	= []
  end
end
#  rubocop: enable Layout/Tab
#  rubocop: enable Lint/RedundantCopDisableDirective
