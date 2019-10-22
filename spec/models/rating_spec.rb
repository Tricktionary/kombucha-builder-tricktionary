describe Rating, type: :model do
  let(:kombucha) { Kombucha.first }
  let(:current_user) { User.first }
  let(:rating){ Rating.create(user: current_user, kombucha: kombucha, rating: 1) }
  
  describe `valid?` do
    let(:result) { rating.valid? }
    
    it 'valid rating' do
      expect(result).to be(true)
    end

    context 'invalid rating' do 

      it 'score is 10' do
        rating.rating = 10
        rating.save
        expect(result).to be(false)
      end

      it 'score is 0' do
        rating.rating = 0
        rating.save
        expect(result).to be(false)
      end
    end 

  end 
end
