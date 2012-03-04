#encoding: UTF-8

class PartiesController < ApplicationController
  def new
    @party = Party.new

    respond_to do |format|
      format.html
      format.json { render json: @party }
    end
  end

  def create
    @party = Party.new(params[:party])

    respond_to do |format|
      if @party.save
        format.html { redirect_to @party, notice: '成功发起聚会' }
        format.json { render json: @party, status: :created, location: @party }
      else
        format.html { render aciton: 'new'}
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @party = Party.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @party }
    end
  end
end
