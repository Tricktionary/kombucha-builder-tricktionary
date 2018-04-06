require 'rails_helper'

describe Api::KombuchasController, type: :request do
  let(:response_body) { JSON.parse(response.body) }

  describe "#index" do
    it "renders a collection of kombuchas" do
      get '/api/kombuchas'
      expect(response_body.length).to eq(Kombucha.count)
    end
  end

  describe "#show" do
    it "shows a kombucha" do
      kombucha = Kombucha.first
      get "/api/kombuchas/#{kombucha.id}"
      expect(response.message).to eq("OK")
      expect(response_body["id"]).to eq(kombucha.id)
    end
  end

  describe "#create" do
    let(:request_params) {
      {
        kombucha: {
          name: "Orange Pop",
          fizziness_level: "low"
        }
      }
    }

    it "creates a kombucha" do
      expect{ post "/api/kombuchas", params: request_params }.to change(Kombucha, :count).by(1)
    end

    it "does not create kombucha if fizziness level is invalid" do
      request_params[:kombucha][:fizziness_level] = "fake"
      expect{ post "/api/kombuchas", params: request_params }.not_to change(Kombucha, :count)
    end
  end

  describe "#update" do
  end
end
