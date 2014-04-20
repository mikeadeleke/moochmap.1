class LeaderboardController < ApplicationController
  def index
    highscore_lb = Leaderboard.new('highscores')
  end
end
