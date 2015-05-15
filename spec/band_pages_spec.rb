ENV['RACK_ENV'] = 'test'

require('capybara/rspec')
require('./app')
require('spec_helper')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe Band do
  describe('band creation path', :type => :feature) do
    it('will create a band') do
      visit('/band_form')
      fill_in('band', :with =>'Dada Life')
      click_button('Add the band')
      expect(page).to have_content('Dada Life')
      click_on('information')
      click_button('Delete Dada Life')
      expect(page).to have_content('You are not following any bands currently')
    end
  end

  describe('band deletion path', :type => :feature) do
    it('will create and remove a band') do
      visit('/band_form')
      fill_in('band', :with =>'Armin')
      click_button('Add the band')
      expect(page).to have_content('Armin')
      click_on('information')
      click_button('Delete Armin')
      expect(page).to have_content('You are not following any bands currently')
    end
  end
end
