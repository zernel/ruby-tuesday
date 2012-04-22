#encoding: UTF-8

class PartiesController < ApplicationController
  def index
    @parties = Party.all

    respond_to do |format|
      format.html
      format.json { render json: @parties }
    end
  end

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
        format.html { render aciton: 'new' }
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

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])

    respond_to do |format|
      if @party.update_attributes(params[:party])
        format.html { redirect_to @party, notice: '成功更新聚会信息' }
        format.json { head :no_content }
      else
        format.html { render aciton: 'edit'}
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy

    respond_to do |format|
        format.html { redirect_to parties_url }
        format.json { head :no_content }
    end
  end
end
