class SiteController < ApplicationController
  def index

    data = {
      'request.remote_ip' => request.remote_ip,
      'request.ip' => request.ip,
    }

    render json: data

  end
end
