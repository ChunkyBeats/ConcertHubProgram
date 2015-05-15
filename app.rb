require("bundler/setup")
Bundler.require(:default, :production)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all
  @venues = Venue.all
  erb(:index)
end

get('/band_form') do
  erb(:band_form)
end

get('/bands') do
  @bands = Band.all
  erb(:bands)
end

get('/venues') do
  @venues = Venue.all
  erb(:venues)
end

post('/bands') do
  @bands = Band.all
  @venues = Venue.all
  new_band = Band.new({:name => params.fetch("band")})
  if new_band.save
    @bands = Band.all
    redirect("/band/#{new_band.id}")
  else
    erb(:error)
  end
end

get('/band/:id') do
  @band = Band.find(params.fetch("id").to_i)
  @band_venues = @band.venues
  erb(:band)
end

get('/band/:id/add_venue') do
  @band = Band.find(params.fetch("id").to_i)
  @venues = Venue.all
  erb(:add_concert)
end

post('/band/:id/add_venue') do
  @band = Band.find(params.fetch("id").to_i)
  venue = Venue.find(params.fetch("add_venue").to_i)
  if @band.venues.push(venue)
    redirect("/band/#{@band.id}")
  else
    erb(:index)
  end
end

get('/band/:id/update') do
  @band = Band.find(params.fetch("id").to_i)
  erb(:update_band)
end

delete('/band/:id/delete') do
  band = Band.find(params.fetch("id").to_i)
  band.delete
  @bands = Band.all
  erb(:bands)
end

# patch('band/:id/update_name') do
#
#













post('/venues') do
  new_venue = Venue.new({:name => params.fetch("venue")})
  if new_venue.save
    @venues = Venue.all
    redirect("/venue/#{new_venue.id}")
  else
    erb(:error)
  end
end

get('/venue_form') do
  erb(:venue_form)
end

get('/venue/:id') do
  @venue = Venue.find(params.fetch("id").to_i)
  @venue_bands = @venue.bands
  erb(:venue)
end
