require_relative '../lib/die'

describe 'A die' do

  let(:die) { Die.new }

  describe 'attributes' do
    it 'has a number of sides' do
      expect(die).to respond_to(:number_of_sides)
    end

    it 'has a face value' do
      expect(die).to respond_to(:face_value)
    end
  end

  describe 'number of sides' do
    it 'has six sides by default' do
      expect(die.number_of_sides).to eq(6)
    end

    it 'can be created with a custom number of sides' do
      num_sides = 19
      fake_die = Die.new(num_sides)
      expect(fake_die.number_of_sides).to eq(num_sides)
    end
  end

  describe 'face value' do
    it 'has a face value of 1 by default' do
      skip
    end
  end

  describe '#to_s string representation' do
    it 'TODO' do
      skip
    end
  end

  describe 'rolling' do
    # Don't spend time testing #roll or #random_face_value. Move on.
  end

end
