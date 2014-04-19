class HomesController < ApplicationController
  def index
    request.remote_ip
  end
end
