require 'spec_helper'

describe PartiesController do
  login_user
  before(:all) do
    @party = Party.new
  end
  let(:party) { double(:party) }

  describe 'GET new' do
    before(:each) do
      Party.should_receive(:new).and_return(@party)

      get :new, format: :json
    end

    it { should respond_with :ok }
    it { should respond_with_content_type /json/ }
  end


  describe 'POST create' do
    context 'with valid params' do
      before(:each) do
        Party.should_receive(:new).and_return(@party)
        @party.should_receive(:save).and_return(true)

        post :create, format: :json
      end

      it { should respond_with :created }
      it { should respond_with_content_type /json/ }
    end

    context 'with invalid params' do
      before(:each) do
        Party.should_receive(:new).and_return(@party)
        @party.should_receive(:save).and_return(false)

        post :create, format: :json
      end

      it { should respond_with :unprocessable_entity }
      it { should respond_with_content_type /json/ }
    end
  end
end
