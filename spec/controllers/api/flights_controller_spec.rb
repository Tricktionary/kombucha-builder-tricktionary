# frozen_string_literal: true

require 'rails_helper'

describe Api::FlightsController, type: :request do
  let(:response_body) { JSON.parse(response.body) }
  let(:kombucha) { Kombucha.first }
  let(:current_user) { User.first }
  let(:headers) { { 'USER_ID': current_user.id } }

  describe "#create" do
    it "create kombucha flights" do
      post '/api/flights', params: { name: "Andy's Flight" }, headers: headers
      expect(response.status).to eq(200)
      expect(response_body["kombucha"].length).to eq(4)
    end

    it "create kombucha flights with a specific kombutcha id" do
      post '/api/flights', params: { name: "Andy's Flight", kombucha_id: kombucha.id }, headers: headers
      expect(response.status).to eq(200)
      expect(response_body["kombucha"][0]).to eq(kombucha.name)
    end

  end
end
