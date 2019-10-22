# frozen_string_literal: true

require 'rails_helper'

describe Kombucha, type: :model do
  let(:kombucha) { Kombucha.first }
  let(:current_user) { User.first }

  describe `valid?` do
    let(:result) { kombucha.valid? }

    it 'valid kombucha' do
      expect(result).to be(true)
    end

    it 'base ingredient' do
      expect(kombucha.base_ingredient.name).to eq("Black Tea")
    end
    
    it 'caffeine free' do
      expect(kombucha.caffeine_free).to eq(false)
    end 

    it 'vegan' do
      expect(kombucha.vegan).to eq(true)
    end 

    context 'average rating when rating exist' do
      before do 
        rating = Rating.create(user: current_user, kombucha: kombucha, rating: 1)
      end 
      it 'expect 1' do 
        expect(kombucha.average_rating).to eq(1)
      end 
    end 

    context 'average rating when no rating exist' do
      it 'expect 5' do 
        expect(kombucha.average_rating).to eq(5)
      end 
    end
  end 

end
