#encoding: UTF-8
class CommentsController < ApplicationController
  def create
    @party = Party.find(params[:comment][:party_id])
    Comment.create(body: params[:comment][:body], user: current_user, party: @party)

    respond_to :js
  end
end
