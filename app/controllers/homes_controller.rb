class HomesController < ApplicationController
  def index
    request.remote_ip
    @mooches = Mooch.all
  end
end
