RSpec.describe Magick::Image, "#chop" do
  before do
    @img = Magick::Image.new(20, 20)
  end

  it "works" do
    expect do
      res = @img.chop(10, 10, 10, 10)
      expect(res).to be_instance_of(Magick::Image)
    end.not_to raise_error
  end
end
