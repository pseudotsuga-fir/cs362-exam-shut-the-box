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
      skip
    end

  end

end
