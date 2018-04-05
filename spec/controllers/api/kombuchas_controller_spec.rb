require 'rails_helper'

describe Api::KombuchasController, type: :request do
  fixtures :kombuchas, :ingredients
  let(:response_body) { JSON.parse(response.body) }

  describe "#index" do
    it "renders a collection of kombuchas" do
      get '/api/kombuchas'
      expect(response_body.length).to eq(Kombucha.count)
    end
  end

  describe "#show" do
  end

  describe "#create" do
  end

  describe "#update" do
  end
end
