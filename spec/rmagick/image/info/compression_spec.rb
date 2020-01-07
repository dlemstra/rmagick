RSpec.describe Magick::Image::Info, '#compression' do
  before do
    @info = Magick::Image::Info.new
  end

  it 'works' do
    Magick::CompressionType.values.each do |v|
      expect { @info.compression = v }.not_to raise_error
      expect(@info.compression).to eq(v)
    end
  end
end
