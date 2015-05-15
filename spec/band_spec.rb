require('spec_helper')

describe Band do
  it('ensures the band has a name') do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end
end
