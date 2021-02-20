require './rubys_not_is_not_not_but_!_(not)'

RSpec.describe 'Ruby\'s not keyword' do
  let(:banger) { Banger.new }
  let(:naysayer) { Naysayer.new }

  context 'when ! is overriden' do
    it 'returns whatever value is returned by !' do
      expect(!banger).to eq :bang
      expect((not banger)).to eq :bang
    end

    it 'also returns the overriding\'s return value when called on the instance' do
      expect(banger.!).to eq :bang
    end
  end

  context 'when not is overriden' do
    it 'returns the overriding\'s return value when called on the instance' do
      expect(naysayer.not).to eq :nay
    end

    context 'but when used in the classical way before the message' do
      it 'evaluates a truthy value to false (as it always does)' do
        expect((not naysayer)).to eq false
      end
    end
  end
end
