class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.where("id is not null")
  end
end
