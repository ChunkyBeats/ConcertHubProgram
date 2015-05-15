require('spec_helper')

describe Venue do
  it('ensures the venue has a name') do
    venue = Venue.new({:name => ""})
    expect(venue.save()).to(eq(false))
  end

  it('formats the input name') do
    venue = Venue.create(name: "grand rapids")
    expect(venue.name).to(eq("Grand Rapids"))
  end
end
