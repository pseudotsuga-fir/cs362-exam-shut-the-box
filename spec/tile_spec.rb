require_relative '../lib/tile'

describe 'A tile' do

  let(:tile) { Tile.new("fake value") }

  describe 'attributes' do
    it 'has a value' do
      expect(tile).to respond_to(:value)
    end

  end

  describe '#up?' do
    it 'is up by default' do
      expect(tile.up?).to be_truthy
    end
  end

  describe '#flip' do
    it 'is up after being flipped' do
      expect(tile.flip).to be_falsey
    end

    it 'stays down despite being flipped more than once' do
      tile.flip
      expect(tile.flip).to be_falsey
    end

  end

  describe '#to_s string representation' do
    context 'when up' do
      it 'shows its value within brackets' do
        skip
      end
    end

    context 'when down' do
      it 'shows a space within brackets' do
        skip
      end
    end
  end

end
