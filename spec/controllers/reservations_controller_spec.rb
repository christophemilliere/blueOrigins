require 'spec_helper'

RSpec.describe ReservationsController, type: :controller do

  context 'index' do
    it 'should return http success' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  # context 'show' do
  #   subject { FactoryGirl.create(:reservation) }
  #
  #   it 'should return http success' do
  #     get :show, {id: subject.id}
  #     response.should be_success
  #   end
  # end

  context 'create' do

    let(:destination){ create :destination }
    let(:teleporter){ create :teleporter, destination_id: destination.id}

    it 'should return status created' do
      post :create, reservation: {name: "tt", teleporter_id: teleporter.id}
      expect(response.status).to eq(302)
    end
  end

end
