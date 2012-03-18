class SitesController < ApplicationController
  def index
    render action: :welcome unless user_signed_in?
  end
end
