class Api::ServicesController < ApplicationController
  respond_to :json
  def index
    respond_with Service.all
  end
end
