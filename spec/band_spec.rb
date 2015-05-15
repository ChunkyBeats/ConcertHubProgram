require('spec_helper')

describe Band do
  it('ensures the band has a name') do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end

  it('formats the input name') do
    band = Band.create(name: "zed's ded")
    expect(band.name).to(eq("Zed's Ded"))
  end
end
