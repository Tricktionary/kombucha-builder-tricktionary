# frozen_string_literal: true

require 'rails_helper'

describe Api::RatingsController, type: :request do
  let(:response_body) { JSON.parse(response.body) }
  let(:kombucha) { Kombucha.first }
  let(:current_user) { User.first }
  let(:headers) { { 'USER_ID': current_user.id } }

  describe "#create" do
    it "create an in rating of kombuchas" do
      post '/api/ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 0 }, headers: headers
      expect(response.status).to eq(500)
    end

    it "create a valid rating" do
      post '/api/ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 2 }, headers: headers
      expect(response.status).to eq(200)
      expect(Rating.all.count).to eq(1)
    end 

    it "create a 1 valid rating and check average" do
      post '/api/ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 2 }, headers: headers
      expect(response.status).to eq(200)
      expect(response_body['rating']).to eq(2)
    end 

    it "create a 2 valid rating but rating alreay exist " do
      post '/api/ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 2 }, headers: headers
      post '/api/ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 5 }, headers: headers

      expect(response.status).to eq(200)
      expect(response_body['rating']).to eq(2)
    end 
  end

  describe "#show" do
    
    context '1 Kombucha rating exist' do
      before do
        rating = Rating.create(user: current_user, kombucha: kombucha, rating: 5)
      end
      it "Check rating " do
        get '/api/ratings/'+current_user.id.to_s, headers: headers
        expect(response.status).to eq(200)
        expect(response_body.length).to eq(1)
      end
    end 

    context '0 Kombucha rating exist' do
      it "Check rating " do
        get '/api/ratings/'+current_user.id.to_s, headers: headers
        expect(response.status).to eq(200)
        expect(response_body.length).to eq(0)
      end
    end 

  end 
   
  describe "#update" do 
    context 'Kombucha rating alreay exist' do
      before do
        rating = Rating.create(user: current_user, kombucha: kombucha, rating: 5)
      end

      it "Update with valid rating  " do
        post '/api/update_ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 2 }, headers: headers
        expect(response.status).to eq(200)
        expect(response_body['rating']).to eq(2)
      end

      it "Update with invalid rating  " do
        post '/api/update_ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 20 }, headers: headers
        expect(response.status).to eq(500)
      end
    end
    
    context 'Kombucha rating does not exist' do
      it "Update with valid rating  " do
        post '/api/update_ratings', params: { user_id: current_user.id, kombucha_id: kombucha.id, rating: 2 }, headers: headers
        expect(response.status).to eq(404)
      end
    end 
  end
   
end
