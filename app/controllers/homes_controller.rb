class HomesController < ApplicationController
  def index
    request.remote_ip
    @recent_mooches = Mooch.limit(5)
  end
end
