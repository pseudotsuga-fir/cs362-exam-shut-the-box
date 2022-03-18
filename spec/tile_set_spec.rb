require_relative '../lib/tile_set'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do
      expect(TileSet.generate.length).to be(9)
    end

    it 'returns an array of tiles of a specified length' do
      num_tiles = 22
      expect(TileSet.generate(num_tiles).length).to be(num_tiles)
    end

    it 'returns an array of tiles whose values increase from 1, by 1' do
      tiles = TileSet.generate.map { |tile| tile.value }
      expect(tiles).to eq([1,2,3,4,5,6,7,8,9])
    end

  end

end
