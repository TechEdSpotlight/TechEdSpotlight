class WelcomeController < ApplicationController
  def index
      @most_recent_stories = Story.last(3)
      @most_popular_stories = Story.first(3) #TODO calculate actual most popular stories
  end
end
