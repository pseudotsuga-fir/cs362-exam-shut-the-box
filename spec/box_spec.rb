require_relative '../lib/box'

describe 'A box' do

  let(:box) { Box.new }

  describe 'attributes' do
    it 'has tiles' do
      expect(box).to respond_to(:tiles)
    end
  end

  describe 'creation' do
    context 'by default' do
      it 'will initialize an array of tiles' do
        expect(box.tiles).to include(a_kind_of(Tile))
      end
    end
    context 'with a specific array of tiles' do
      it 'will retain the tiles passed its constructor' do
        num_tiles = 22
        box = Box.new(TileSet.generate(num_tiles))

        expect(box.tiles.length).to eq(num_tiles)
      end
    end
  end

  describe '#tiles_remaining?' do
    it 'returns true when at least one tile is up' do
      expect(box.tiles_remaining?).to be_truthy
    end
    it 'returns false when none of the tiles are up' do
      box.tiles.each { |tile| tile.flip }
      expect(box.tiles_remaining?).to be_falsey
    end
  end

  describe '#no_tiles_remaining?' do
    it 'returns true when none of the tiles are up' do
      skip
    end
    it 'returns false when any tile is up' do
      skip
    end
  end

  describe '#shut?' do
    it 'is true when there are no tiles remaining' do
      skip
    end
    it 'is false when there are tiles remaining' do
      skip
    end
  end

  describe '#total_value_of_remaining_tiles' do
    it 'is the sum of the values of all the tiles that are still up' do
      skip
    end
  end

  describe '#flip' do
    it 'flips each tile whose value matches any of the tile values it receives' do
      skip
    end
    it 'does not flip any tile whose value does not match any of the tile values it receives' do
      skip
    end
  end

  describe '#to_s string representation' do
    # Given a box with the tiles that have values 1, 2, 3, 4,
    # And tile 2 is down,
    # The string representation is [1][ ][3][4].
    it "is each tile value in brackets with blanks for tiles that are down" do
      skip
    end
  end
end
